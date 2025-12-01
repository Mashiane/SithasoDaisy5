// ApexCharts should be loaded globally via CDN
// <script src="https://cdn.jsdelivr.net/npm/apexcharts"></script>

/**
 * Web Component: `sithaso-apex`
 *
 * A lightweight wrapper around ApexCharts that enables declarative chart
 * configuration via HTML attributes and provides a small runtime API for
 * programmatic updates. The component supports a wide range of ApexCharts
 * chart types and formats input data in several common shapes.
 *
 * Observed attributes (short list here — the code registers all observed
 * attributes in `observedAttributes`): `type`, `data`, `options`, `height`,
 * `width`, `show-legend`, `show-toolbar`, `title`, `categories`, and more.
 *
 * Example markup:
 * ```html
 * <sithaso-apex
 *   type="line"
 *   title="Simple Line Chart"
 *   categories='["Mon","Tue","Wed"]'
 *   data='[{"name":"Series 1","data":[10,20,30]}]'>
 * </sithaso-apex>
 * ```
 *
 * Runtime API (selected):
 * - `clear()` - destroy current chart and reset runtime memory
 * - `refresh()` - apply current runtime state to attributes and re-render chart
 * - `updateData(newData)` - set the `data` attribute (triggers refresh)
 * - `updateOptions(newOptions)` - merge and set `options` attribute
 * - `getChart()` - return the underlying ApexCharts instance
 * - `addSeries*`/`addCategory`/`addColors` - runtime series/colors management
 */

class SithasoApex extends HTMLElement {
  static get observedAttributes() {
    return ['type', 'data', 'options', 'height', 'width', 'theme', 'loading', 'show-legend', 'legend-position', 'show-toolbar', 'title', 'show-data-labels', 'data-label-orientation', 'data-label-position', 'x-axis-title', 'y-axis-title', 'curve', 'line-width', 'categories', 'donut-show-total', 'hollow-size', 'dashed-radial', 'track-width', 'bar', 'x-axis-offsety', 'x-axis-label-rotate', 'x-axis-label-rotate-offsety', 'gradient', 'realtime', 'marker-size', 'stacked', 'border-radius', 'x-axis-output-format', 'y-axis-output-format', 'column-width', 'start-angle', 'end-angle', 'bar-labels', 'sparkline','grid-show','tooltip-enabled','subtitle','subtitle-font-size','title-font-size'];
  }

  /**
   * Construct the `sithaso-apex` component and initialize internal state.
   * The component maintains a memory store of runtime series, categories and
   * colors to support dynamic manipulation APIs such as `addSeriesValue`.
   */
  constructor() {
    super();
    this.chart = null;
    this._data = null;
    this._options = {};
    this._isLoading = false;
    this._pendingUpdates = {};
    this._updateTimeout = null;
    this._updateDelay = 100; // ms to wait before applying updates
    this._seriesMap = new Map(); // Store series in memory for runtime management
    this._categories = []; // Store categories in memory for runtime management
    this._colors = []; // Store colors in memory for runtime management
    // Internal flag to suppress attributeChangedCallback when writing attributes internally
    this._internalAttributeMutate = false;
  }

  /**
   * Called when the element is inserted into the DOM.
   * Ensures `ApexCharts` is available and performs an initial render.
   * @private
   */
  connectedCallback() {
    this.checkApexCharts();
    this.render();
  }

  /**
   * Called when the element is removed from the DOM. Cleans up the chart
   * by destroying the ApexCharts instance if present.
   * @private
   */
  disconnectedCallback() {
    if (this.chart) {
      try {
        this.chart.destroy();
      } catch (error) {
        console.warn('Error destroying chart during disconnection:', error);
      }
    }
  }

  // Debounced update method to batch multiple attribute changes
  /**
   * Queue an attribute change for debounced application.
   * Multiple attribute changes are batched together and applied after the
   * configured `_updateDelay` to reduce needless re-renders.
   * @private
   * @param {string} attributeName - Attribute being modified
   * @param {string} newValue - New attribute value as a string
   */
  _scheduleUpdate(attributeName, newValue) {
    // Clear any existing timeout
    if (this._updateTimeout) {
      clearTimeout(this._updateTimeout);
    }

    // Add this change to pending updates
    this._pendingUpdates[attributeName] = newValue;

    // Schedule the update
    this._updateTimeout = setTimeout(() => {
      this._applyPendingUpdates();
    }, this._updateDelay);
  }

  // Apply all pending updates at once
  /**
   * Apply any queued attribute changes to the live chart instance. This
   * method detects and handles `data` and `options` updates (which call
   * `updateSeries` and `updateOptions` on ApexCharts respectively), and
   * applies visual attribute changes like title and size.
   * @private
   */
  _applyPendingUpdates() {
    if (!this.chart || Object.keys(this._pendingUpdates).length === 0) {
      return;
    }

    // Skip updates if chart container is not properly attached to DOM
    if (!this.chart.container || !document.contains(this.chart.container)) {
      this._pendingUpdates = {}; // Clear pending updates
      return;
    }

    const updates = { ...this._pendingUpdates };
    this._pendingUpdates = {}; // Clear before processing

    // Process data/options updates first (these use updateOptions/updateSeries)
    if (updates.data !== undefined) {
      try {
        const rawData = this.parseData(updates.data);
        const chartType = this.getAttribute('type') || 'line';
        let parsedData = rawData;
        // Convert parsed data into the expected shape for updateSeries
        if (chartType === 'pie' || chartType === 'donut' || chartType === 'radialBar' || chartType === 'polarArea') {
          parsedData = this.formatSeries(rawData, chartType);
        } else {
          parsedData = this.formatSeries(rawData, chartType);
        }
        this.chart.updateSeries(parsedData);
      } catch (error) {
        console.error('Error updating chart data:', error);
      }
    }

    if (updates.options !== undefined) {
      try {
        const options = this.parseOptions(updates.options);
        this.chart.updateOptions(options);
      } catch (error) {
        console.error('Error updating chart options:', error);
      }
    }

    // Process visual attribute updates
    const visualAttributes = ['title', 'height', 'width', 'show-legend', 'legend-position', 'show-toolbar', 'show-data-labels', 'data-label-orientation', 'data-label-position', 'sparkline', 'grid-show', 'tooltip-enabled', 'subtitle', 'subtitle-font-size', 'title-font-size'];
    const visualUpdates = {};

    for (const [attr, value] of Object.entries(updates)) {
      if (visualAttributes.includes(attr)) {
        if (attr === 'title') {
          visualUpdates.title = { text: value };
        } else if (attr === 'height') {
          visualUpdates.chart = { ...visualUpdates.chart, height: parseInt(value) || 400 };
        } else if (attr === 'width') {
          visualUpdates.chart = { ...visualUpdates.chart, width: parseInt(value) || '100%' };
        } else if (attr === 'show-legend') {
          visualUpdates.legend = { show: value === 'true' };
        } else if (attr === 'legend-position') {
          visualUpdates.legend = { ...visualUpdates.legend, position: value };
        } else if (attr === 'show-toolbar') {
          visualUpdates.chart = { ...visualUpdates.chart, toolbar: { show: value === 'true' } };
        } else if (attr === 'show-data-labels') {
          visualUpdates.dataLabels = { enabled: value === 'true' };
        } else if (attr === 'data-label-orientation') {
          visualUpdates.plotOptions = visualUpdates.plotOptions || {};
          visualUpdates.plotOptions.bar = visualUpdates.plotOptions.bar || {};
          visualUpdates.plotOptions.bar.dataLabels = visualUpdates.plotOptions.bar.dataLabels || {};
          visualUpdates.plotOptions.bar.dataLabels.orientation = value;
        } else if (attr === 'data-label-position') {
          visualUpdates.plotOptions = visualUpdates.plotOptions || {};
          visualUpdates.plotOptions.bar = visualUpdates.plotOptions.bar || {};
          visualUpdates.plotOptions.bar.dataLabels = visualUpdates.plotOptions.bar.dataLabels || {};
          visualUpdates.plotOptions.bar.dataLabels.position = value;
        } else if (attr === 'sparkline') {
          visualUpdates.chart = visualUpdates.chart || {};
          visualUpdates.chart.sparkline = { enabled: value === 'true' };
        } else if (attr === 'grid-show') {
          visualUpdates.grid = visualUpdates.grid || {};
          visualUpdates.grid.show = value === 'true';
        } else if (attr === 'tooltip-enabled') {
          visualUpdates.tooltip = visualUpdates.tooltip || {};
          visualUpdates.tooltip.enabled = value === 'true';
        } else if (attr === 'subtitle') {
          visualUpdates.subtitle = { ...(visualUpdates.subtitle || {}), text: value };
        } else if (attr === 'subtitle-font-size') {
          visualUpdates.subtitle = { ...(visualUpdates.subtitle || {}), style: { ...((visualUpdates.subtitle && visualUpdates.subtitle.style) || {}), fontSize: value } };
        } else if (attr === 'title-font-size') {
          visualUpdates.title = { ...(visualUpdates.title || {}), style: { ...((visualUpdates.title && visualUpdates.title.style) || {}), fontSize: value } };
        }
      }
    }

    // Apply visual updates if any
    if (Object.keys(visualUpdates).length > 0) {
      try {
        this.chart.updateOptions(visualUpdates);
      } catch (error) {
        console.error('Error updating chart options:', error);
      }
    }
  }

  // Force immediate application of any pending updates
  /**
   * Immediately flush any pending updates.
   * This cancels the debounced `setTimeout` and applies updates synchronously.
   */
  forceUpdate() {
    if (this._updateTimeout) {
      clearTimeout(this._updateTimeout);
      this._updateTimeout = null;
    }
    this._applyPendingUpdates();
  }

  // Set the debounce delay (in milliseconds)
  /**
   * Set the debounce delay used by `_scheduleUpdate`.
   * @param {number} delay - Milliseconds to wait before applying pending updates
   */
  setUpdateDelay(delay) {
    this._updateDelay = Math.max(0, delay);
  }

  /**
   * Called when an observed attribute changes. This method debounces updates
   * and schedules a chart update unless the mutation originated from an
   * internal operation (tracked by `_internalAttributeMutate`).
   * @param {string} name - Attribute name
   * @param {string|null} oldValue - Old attribute value
   * @param {string|null} newValue - New attribute value
   */
  attributeChangedCallback(name, oldValue, newValue) {
    if (oldValue === newValue) return;
    // Ignore attribute changes triggered by internal writes
    if (this._internalAttributeMutate) return;

    if (name === 'loading') {
      this._isLoading = newValue !== null;
      this.updateLoadingState();
    } else if (name === 'type') {
      // Type change requires immediate chart recreation (can't be debounced)
      if (this.chart) {
        try {
          this.chart.destroy();
        } catch (error) {
          console.warn('Error destroying chart during type change:', error);
        }
        this.chart = null;
      }
      this.render();
    } else {
      // All other attributes are debounced for better performance
      this._scheduleUpdate(name, newValue);
    }
  }

  /**
   * Ensure the `ApexCharts` global is available. When missing, display an
   * error on the component and return false so calling code can avoid
   * constructing an ApexCharts instance.
   * @private
   * @returns {boolean}
   */
  checkApexCharts() {
    if (typeof ApexCharts === 'undefined') {
      console.error('ApexCharts is not loaded. Please include: <script src="https://cdn.jsdelivr.net/npm/apexcharts"></script>');
      this.showError('ApexCharts library not found. Please load ApexCharts first.');
      return false;
    }
    return true;
  }

  /**
   * Render a visible error message inside the component container.
   * This writes a simple message into the element's `innerHTML` for
   * quick debugging when creating charts fails.
   * @param {string} message - Error message text to display
   */
  showError(message) {
    this.innerHTML = `<div style="color: red; padding: 20px; text-align: center; border: 1px solid #ffcccc; background: #fff5f5;">${message}</div>`;
  }

  /**
   * Update the DOM's loading indicator state based on the `loading`
   * attribute. A minimal overlay is added/removed to visually indicate
   * that the chart is in a loading state.
   * @private
   */
  updateLoadingState() {
    if (this._isLoading) {
      this.style.opacity = '0.6';
      this.style.pointerEvents = 'none';
    } else {
      this.style.opacity = '1';
      this.style.pointerEvents = 'auto';
    }
  }

  // Getter for the `border-radius` attribute. Defaults to 4 when not set.
  get borderRadius() {
    const v = this.getAttribute('border-radius');
    const n = parseInt(v, 10);
    return (!isNaN(n) && n >= 0) ? n : 4;
  }

  // Getter for axis output format attributes. Allowed values: 'money','thousand','normal','date','datetime','time'
  get xAxisOutputFormat() {
    const v = (this.getAttribute('x-axis-output-format') || 'normal').toString();
    return ['money', 'thousand', 'normal', 'date', 'datetime', 'time'].includes(v) ? v : 'normal';
  }

  get yAxisOutputFormat() {
    const v = (this.getAttribute('y-axis-output-format') || 'normal').toString();
    return ['money', 'thousand', 'normal', 'date', 'datetime', 'time'].includes(v) ? v : 'normal';
  }

  // Format a single axis value according to the requested output format
  /**
   * Format axis values for display based on configured output format.
   * Common formats include:
   * - 'money'
   * - 'thousand'
   * - 'normal'
   * - 'date'
   * - 'datetime'
   * - 'time'
   * @private
   * @param {*} val - The axis value to format
   * @param {string} fmt - Output format key
   * @returns {string|*} Formatted label or original value if no formatting applied
   */
  _formatValueForAxis(val, fmt) {
    if (!fmt || fmt === 'normal') return val;
    // Try numeric formatting first for money/thousand
    if (fmt === 'money' || fmt === 'thousand') {
      const n = Number(val);
      if (isNaN(n)) return val;
      if (fmt === 'money') {
        return new Intl.NumberFormat('en-US', { minimumFractionDigits: 2, maximumFractionDigits: 2 }).format(n);
      }
      return new Intl.NumberFormat('en-US', { maximumFractionDigits: 0 }).format(n);
    }

    // Date formatting: accept numeric timestamps or parseable date strings
    if (fmt === 'date' || fmt === 'datetime') {
      let d = null;
      if (typeof val === 'number') d = new Date(val);
      else if (typeof val === 'string' && /^[0-9]+$/.test(val)) d = new Date(Number(val));
      else d = new Date(val);
      if (isNaN(d.getTime())) return val;
      const pad = (s) => String(s).padStart(2, '0');
      const yyyy = d.getFullYear();
      const mm = pad(d.getMonth() + 1);
      const dd = pad(d.getDate());
      if (fmt === 'date') return `${yyyy}-${mm}-${dd}`;
      const hh = pad(d.getHours());
      const min = pad(d.getMinutes());
      return `${yyyy}-${mm}-${dd} ${hh}:${min}`;
    }

    // Time formatting: HH:mm
    if (fmt === 'time') {
      let d = null;
      if (typeof val === 'number') d = new Date(val);
      else if (typeof val === 'string' && /^[0-9]+$/.test(val)) d = new Date(Number(val));
      else d = new Date(val);
      if (isNaN(d.getTime())) return val;
      const pad = (s) => String(s).padStart(2, '0');
      const hh = pad(d.getHours());
      const min = pad(d.getMinutes());
      return `${hh}:${min}`;
    }

    return val;
  }

  // Inject label formatter functions into defaultOptions.xaxis/yaxis when not provided by user options
  /**
   * Attach label formatters to `defaultOptions.xaxis` or `defaultOptions.yaxis`
   * based on provided `x-axis-output-format` and `y-axis-output-format`.
   * @private
   * @param {object} defaultOptions - Base ApexCharts default options to mutate
   */
  _applyAxisOutputFormats(defaultOptions) {
    try {
      const xfmt = this.xAxisOutputFormat;
      const yfmt = this.yAxisOutputFormat;

      if (defaultOptions && xfmt && xfmt !== 'normal') {
        defaultOptions.xaxis = defaultOptions.xaxis || {};
        defaultOptions.xaxis.labels = defaultOptions.xaxis.labels || {};
        if (typeof defaultOptions.xaxis.labels.formatter === 'undefined') {
          defaultOptions.xaxis.labels.formatter = (val) => this._formatValueForAxis(val, xfmt);
        }
      }

      if (defaultOptions && yfmt && yfmt !== 'normal') {
        if (Array.isArray(defaultOptions.yaxis)) {
          defaultOptions.yaxis = defaultOptions.yaxis.map(y => {
            y = y || {};
            y.labels = y.labels || {};
            if (typeof y.labels.formatter === 'undefined') {
              y.labels.formatter = (val) => this._formatValueForAxis(val, yfmt);
            }
            return y;
          });
        } else {
          defaultOptions.yaxis = defaultOptions.yaxis || {};
          defaultOptions.yaxis.labels = defaultOptions.yaxis.labels || {};
          if (typeof defaultOptions.yaxis.labels.formatter === 'undefined') {
            defaultOptions.yaxis.labels.formatter = (val) => this._formatValueForAxis(val, yfmt);
          }
        }
      }
    } catch (e) {
      // non-fatal - don't block chart creation
      console.warn('Failed to apply axis output formats', e);
    }
  }

  /**
   * Render the component DOM and instantiate the ApexCharts instance
   * using the current attributes (`type`, `data`, `options`, etc.). This
   * is typically called on initial connect and when a full chart redraw
   * is required.
   * @private
   */
  render() {
    if (!this.checkApexCharts()) return;

    // Clear any previous content (e.g., error messages)
    this.innerHTML = '';

    const container = document.createElement('div');
    container.style.height = this.getAttribute('height') || '300px';
    container.style.width = this.getAttribute('width') || '100%';
    container.style.transition = 'opacity 0.3s ease';
    // For circular charts, allow overflow to prevent clipping
    const chartType = this.mapChartType(this.getAttribute('type') || 'line');

    // Default to forcing rounded stacks for bar/column charts unless the
    // user explicitly set the attribute. This makes pill-shaped ends the
    // default visual for stacked bars/columns.
    if ((chartType === 'bar' || chartType === 'column') && this.getAttribute('force-rounded-stacks') === null) {
      this.setAttribute('force-rounded-stacks', 'true');
    }
    if (chartType === 'pie' || chartType === 'donut' || chartType === 'radialBar') {
      container.style.overflow = 'visible';
    } else {
      container.style.overflow = 'hidden';
    }
    container.style.position = 'relative'; // For proper positioning
    this.appendChild(container);

    this.createChart(container);
    this.updateLoadingState();
  }

  /**
   * Choose and delegate to the correct `create*Chart()` factory method
   * for the current `type` attribute. Each factory builds chart-specific
   * defaults then instantiates the ApexCharts instance.
   * @private
   * @param {HTMLElement} container - DOM container for the chart
   */
  createChart(container) {
    const type = this.getAttribute('type') || 'line';
    const chartType = this.mapChartType(type);

    // Route to specific chart creation method
    switch (chartType) {
      case 'line':
        this.createLineChart(container);
        break;
      case 'area':
        this.createAreaChart(container);
        break;
      case 'column':
        this.createColumnChart(container);
        break;
      case 'bar':
        this.createBarChart(container);
        break;
      case 'pie':
        this.createPieChart(container);
        break;
      case 'donut':
        this.createDonutChart(container);
        break;
      case 'radialBar':
        this.createRadialBarChart(container);
        break;
      case 'polarArea':
        this.createPolarAreaChart(container);
        break;
      case 'rangeArea':
        this.createRangeAreaChart(container);
        break;
      case 'radar':
        this.createRadarChart(container);
        break;
      case 'scatter':
        this.createScatterChart(container);
        break;
      default:
        // For unsupported chart types, show error
        this.showError(`Chart type "${type}" is not supported yet`);
        return;
    }
  }

  // ===== UTILITY METHODS =====

  // Get base default options applicable to all chart types
  /**
   * Return a base options object for the provided chartType that contains
   * common, sensible defaults used across chart factories (legends, grid,
   * tooltips, responsive behavior, etc.). Caller can shallow merge this
   * object with type-specific defaults and user-provided `options`.
   * @param {string} chartType - ApexCharts chart type string (line, bar, pie...)
   * @returns {object} Default options object used as base for chart creation
   */
  getBaseDefaultOptions(chartType = 'line') {
    const isCartesian = ['line', 'area', 'bar', 'scatter'].includes(chartType);
    const isCircular = ['pie', 'donut', 'radialBar'].includes(chartType);
    const gridShow = this.getAttribute('grid-show') !== 'false';
    const tooltipEnabled = this.getAttribute('tooltip-enabled') !== 'false';
    const showLegend = this.getAttribute('show-legend') !== 'false';
    const legendPosition = this.getAttribute('legend-position') || 'bottom';
    const title = this.getAttribute('title') || '';
    const titleFontSize = this.getAttribute('title-font-size') || '14px';
    const subtitle = this.getAttribute('subtitle') || '';
    const subtitleFontSize = this.getAttribute('subtitle-font-size') || '12px';
    const showToolbar = this.getAttribute('show-toolbar') !== 'false';
    const showDataLabels = this.showDataLabels;
    const xAxisTitle = this.getAttribute('x-axis-title') || '';
    const yAxisTitle = this.getAttribute('y-axis-title') || '';
    const curve = this.getAttribute('curve') || 'smooth';
    const lineWidth = parseInt(this.getAttribute('line-width'), 10) || 2;
    const markerSize = this.markerSize;
    const sparkline = this.getAttribute('sparkline') === 'true';

    let finalShowDataLabels = showDataLabels;
    const isRealtime = this.getAttribute('realtime') === 'true';
    if (isRealtime) finalShowDataLabels = false;

    const legendOptions = {
      show: showLegend,
      position: legendPosition,
      horizontalAlign: 'center',
      verticalAlign: legendPosition === 'top' ? 'top' : 'bottom',
      floating: false,
      offsetX: 0,
      offsetY: 0,
      labels: { colors: '#333', useSeriesColors: false },
      formatter: function (seriesName, opts) { return seriesName || 'Series'; }
    }

    const subtitleOptions = {
        text: subtitle,
        align: 'left',
        style: {
          fontSize: subtitleFontSize,
          color: '#333'
        }
      }

    const titleOptions = {
        text: title,
        align: 'left',
        style: {
          fontSize: titleFontSize,
          color: '#333'
        }
      }

    const baseOptions = {
      chart: {
        toolbar: { show: showToolbar },
        height: parseInt(this.getAttribute('height')) || 350,
        animations: { enabled: true },  // Smooth UX
        fontFamily: 'inherit',          // Consistent with page fonts
        zoom: { enabled: false },       // Disabled by default
        sparkline: { enabled: sparkline }
      },
      title: titleOptions,
      subtitle: subtitleOptions,
      legend: legendOptions,
      tooltip: {
        enabled: tooltipEnabled,
        shared: true,
        followCursor: true,
        intersect: false,
        x: {
          show: true,
        },
        y: {
          show: true,
        }
      },
      dataLabels: {
        enabled: showDataLabels
      },
      stroke: {
        curve: curve,
        width: lineWidth
      },
      markers: {
        size: markerSize,
        strokeColors: '#fff',
        strokeWidth: 2
      },
      responsive: [{
        breakpoint: 480,
        options: {
          chart: { height: 250 },       // Smaller height on mobile
          legend: {
            position: 'bottom',          // Legend moves to bottom on mobile
            horizontalAlign: 'center',
            verticalAlign: 'bottom',
            offsetX: 0,
            offsetY: 0
          }
        }
      }]
    };

    const xAxisOffsetY = this.getAttribute('x-axis-offsety');
    baseOptions.xaxis = {
      tooltip: { enabled: false },
      labels: { show: true },
      position: 'bottom',
      title: {
        text: xAxisTitle,
        style: {
          fontSize: '14px',
          color: '#333'
        },
        offsetY: xAxisOffsetY ? parseInt(xAxisOffsetY) : 2
      }
    };
    
    baseOptions.yaxis = {
      tooltip: { enabled: false },
      labels: { show: true },
      title: {
        text: yAxisTitle,
        style: {
          fontSize: '14px',
          color: '#333'
        }
      }
    };
    
    // Add grid settings for all charts
    baseOptions.grid = {
      show: gridShow,
      borderColor: '#e7e7e7',
      strokeDashArray: 3,
      xaxis: { lines: { show: true } },
      yaxis: { lines: { show: true } },
      padding: {
        top: 10, right: 20, bottom: 10, left: 10
      }
    };

    if (this.getAttribute('realtime') === 'true') {
      baseOptions.chart.animations = { enabled: true, easing: 'linear', dynamicAnimation: { speed: 1000 } };
      baseOptions.chart.zoom.enabled = false ;
      baseOptions.markers.size = 0;
      baseOptions.dataLabels.enabled = finalShowDataLabels;
    }

    // Apply gradient fill if gradient attribute is true
    if (this.getAttribute('gradient') !== 'false') {
      baseOptions.fill = {
        type: 'gradient'
      };
    }
    return baseOptions;
  }

  // Setter to update chart options dynamically
  /**
   * Merge and persist options provided via the `.options` setter. The
   * provided object will be deep-merged with the currently stored set and
   * serialized into the `options` attribute so it is reflected on the DOM.
   * @param {object} newOptions - Partial options to merge
   */
  set options(newOptions) {
    this._options = { ...this._options, ...newOptions };
    if (this.chart) {
      this.chart.updateOptions(this._options);
    }
  }

  // Getter to retrieve current options
  /**
   * Accessor to retrieve parsed `options` attribute as an object. When no
   * attribute is present, it returns an empty object. If invalid JSON is
   * found, a warning is printed and `{}` is returned.
   * @returns {object} Parsed options object
   */
  get options() {
    const attr = this.getAttribute('options');
    if (attr) {
      return this.parseOptions(attr);
    }
    return this._options;
  }

  // Getter for marker-size attribute
  get markerSize() {
    const value = this.getAttribute('marker-size');
    return value ? parseInt(value, 10) : 6;
  }

  // Getter/setter for grid-show attribute (boolean string 'true' or removed)
  get gridShow() {
    const v = this.getAttribute('grid-show');
    return v === null ? null : (v === 'true');
  }
  set gridShow(value) {
    if (value === true || value === 'true') this.setAttribute('grid-show', 'true');
    else this.setAttribute('grid-show', 'false');
  }

  // Getter/setter for tooltip-enabled attribute (boolean string 'true' or removed)
  get tooltipEnabled() {
    const v = this.getAttribute('tooltip-enabled');
    return v === null ? null : (v === 'true');
  }
  set tooltipEnabled(value) {
    if (value === true || value === 'true') this.setAttribute('tooltip-enabled', 'true');
    else this.setAttribute('tooltip-enabled', 'false');
  }

  // Getter / setter for 'sparkline' attribute — boolean value interpreted as string 'true' or removed
  get sparkline() {
    return this.getAttribute('sparkline') === 'true';
  }
  set sparkline(value) {
    if (value === true || value === 'true') this.setAttribute('sparkline', 'true');
    else this.removeAttribute('sparkline');
  }

  // Getter for optional `column-width` attribute. If not set, component
  // will leave the value undefined so ApexCharts uses its own default ('70%').
  get columnWidth() {
    const v = this.getAttribute('column-width');
    return v ? v.toString() : null;
  }

  // Getter for bar-labels attribute (boolean). Defaults to false.
  get barLabels() {
    const v = this.getAttribute('bar-labels');
    return v === 'true';
  }

  // Getter for radial bar start-angle (degrees). Default 0.
  get startAngle() {
    const v = this.getAttribute('start-angle');
    const n = parseInt(v, 10);
    return (!isNaN(n)) ? n : 0;
  }

  // Getter for radial bar end-angle (degrees). Default 270.
  get endAngle() {
    const v = this.getAttribute('end-angle');
    const n = parseInt(v, 10);
    return (!isNaN(n)) ? n : 360;
  }

  // Getters and setters for all observedAttributes
  get typeOf() { return this.getAttribute('type'); }
  set typeOf(value) { this.setAttribute('type', value); }

  get data() { return this.parseData(this.getAttribute('data')); }
  set data(value) {
    const jsonValue = JSON.stringify(value);
    this.setAttribute('data', jsonValue);
    // If chart exists, update it directly (attributeChangedCallback will handle it)
  }

  get height() { return this.getAttribute('height'); }
  set height(value) { this.setAttribute('height', value); }

  get width() { return this.getAttribute('width'); }
  set width(value) { this.setAttribute('width', value); }

  get theme() { return this.getAttribute('theme'); }
  set theme(value) { this.setAttribute('theme', value); }

  get loading() { return this.getAttribute('loading'); }
  set loading(value) { this.setAttribute('loading', value); }

  get showLegend() { return this.getAttribute('show-legend'); }
  set showLegend(value) { this.setAttribute('show-legend', value); }

  get legendPosition() { return this.getAttribute('legend-position'); }
  set legendPosition(value) { this.setAttribute('legend-position', value); }

  get showToolbar() { return this.getAttribute('show-toolbar'); }
  set showToolbar(value) { this.setAttribute('show-toolbar', value); }

  get title() { return this.getAttribute('title'); }
  set title(value) { this.setAttribute('title', value); }

  // Subtitle attribute: used as chart.subtitle.text
  get subtitle() { return this.getAttribute('subtitle'); }
  set subtitle(value) {
    if (value === null || value === undefined) this.removeAttribute('subtitle');
    else this.setAttribute('subtitle', value);
  }

  // Font size for subtitle; default '12px'
  get subtitleFontSize() { return this.getAttribute('subtitle-font-size') || '12px'; }
  set subtitleFontSize(value) { if (value === null || value === undefined) this.removeAttribute('subtitle-font-size'); else this.setAttribute('subtitle-font-size', value); }

  // Font size for title; default '14px'
  get titleFontSize() { return this.getAttribute('title-font-size') || '14px'; }
  set titleFontSize(value) { if (value === null || value === undefined) this.removeAttribute('title-font-size'); else this.setAttribute('title-font-size', value); }

  // Getter/setter for show-data-labels to normalize the boolean behavior
  get showDataLabels() {
    return this.hasAttribute('show-data-labels') && this.getAttribute('show-data-labels') !== 'false';
  }
  set showDataLabels(value) {
    if (value === false || value === 'false' || value === null || value === undefined) {
      this.removeAttribute('show-data-labels');
    } else {
      // Set explicit true string so attributeExists checks pass
      this.setAttribute('show-data-labels', 'true');
    }
  }

  get xAxisTitle() { return this.getAttribute('x-axis-title'); }
  set xAxisTitle(value) { this.setAttribute('x-axis-title', value); }

  get yAxisTitle() { return this.getAttribute('y-axis-title'); }
  set yAxisTitle(value) { this.setAttribute('y-axis-title', value); }

  // Getter/setter for data-label-orientation: values like 'vertical' or 'horizontal'
  get dataLabelOrientation() { return this.getAttribute('data-label-orientation'); }
  set dataLabelOrientation(value) {
    if (value === null || value === undefined) {
      this.removeAttribute('data-label-orientation');
    } else {
      this.setAttribute('data-label-orientation', value);
    }
  }
  // Getter/setter for data-label-position: values like 'top', 'center', 'bottom'
  get dataLabelPosition() { return this.getAttribute('data-label-position'); }
  set dataLabelPosition(value) {
    if (value === null || value === undefined) {
      this.removeAttribute('data-label-position');
    } else {
      this.setAttribute('data-label-position', value);
    }
  }

  get curve() { return this.getAttribute('curve'); }
  set curve(value) { this.setAttribute('curve', value); }

  get lineWidth() { return this.getAttribute('line-width'); }
  set lineWidth(value) { this.setAttribute('line-width', value); }

  get categories() { 
    const value = this.getAttribute('categories');
    try {
      return value ? JSON.parse(value) : [];
    } catch {
      return [];
    }
  }
  set categories(value) { 
    this.setAttribute('categories', JSON.stringify(value)); 
  }

  get donutShowTotal() { return this.getAttribute('donut-show-total'); }
  set donutShowTotal(value) { this.setAttribute('donut-show-total', value); }

  get hollowSize() { return this.getAttribute('hollow-size'); }
  set hollowSize(value) { this.setAttribute('hollow-size', value); }

  get dashedRadial() { return this.getAttribute('dashed-radial'); }
  set dashedRadial(value) { this.setAttribute('dashed-radial', value); }

  get trackWidth() { return this.getAttribute('track-width'); }
  set trackWidth(value) { this.setAttribute('track-width', value); }

  get bar() { return this.getAttribute('bar'); }
  set bar(value) { this.setAttribute('bar', value); }

  get xAxisOffsetY() { return this.getAttribute('x-axis-offsety'); }
  set xAxisOffsetY(value) { this.setAttribute('x-axis-offsety', value); }

  get xAxisLabelRotate() { return this.getAttribute('x-axis-label-rotate'); }
  set xAxisLabelRotate(value) { this.setAttribute('x-axis-label-rotate', value); }

  get xAxisLabelRotateOffsetY() { return this.getAttribute('x-axis-label-rotate-offsety'); }
  set xAxisLabelRotateOffsetY(value) { this.setAttribute('x-axis-label-rotate-offsety', value); }

  get gradient() { return this.getAttribute('gradient'); }
  set gradient(value) { this.setAttribute('gradient', value); }

  get realtime() { return this.getAttribute('realtime'); }
  set realtime(value) { this.setAttribute('realtime', value); }

  // stacked: boolean attribute controlling whether certain charts are stacked
  get stacked() { return this.getAttribute('stacked') === 'true'; }
  set stacked(value) { this.setAttribute('stacked', value ? 'true' : 'false'); }

  // ===== UTILITY METHODS =====

  /**
   * Basic validation to determine whether the chart has meaningful data to
   * be rendered. This is intentionally permissive since dynamic charts may
   * be initially empty and receive data later.
   * @private
   * @param {*} data - The parsed data object/array for the chart
   * @returns {boolean} True if the data is present and renderable
   */
  validateChartData(data) {
    if (!data || (typeof data === 'object' && Object.keys(data).length === 0)) {
      this.showError('No data provided for chart');
      return false;
    }
    // Allow empty arrays as they might be valid for dynamic charts
    return true;
  }

  formatLineSeries(data) {
    return this.formatGenericSeries(data, 'line');
  }

  formatAreaSeries(data) {
    return this.formatGenericSeries(data, 'area');
  }

  formatBarSeries(data) {
    return this.formatGenericSeries(data, 'bar');
  }

  formatPieSeries(data) {
    if (Array.isArray(data)) {
      if (data.length > 0 && typeof data[0] === 'object' && data[0].name) {
        // New format: [{"name": "Desktop", "data": 44, "color": "#008FFB"}]
        return data.map(item => item.data);
      } else if (Array.isArray(data[0]) && data[0].length === 2) {
        // Old format: [["Desktop", 44], ["Mobile", 23]]
        return data.map(item => item[1]);
      } else {
        return data;
      }
    } else if (typeof data === 'object') {
      return Object.values(data);
    }
    return [];
  }

  formatDonutSeries(data) {
    return this.formatPieSeries(data); // Same as pie
  }

  formatRadialBarSeries(data) {
    return this.formatPieSeries(data); // Same as pie
  }

  formatScatterSeries(data) {
    return this.formatGenericSeries(data, 'scatter');
  }

  /**
   * Convert a wide range of input shapes for series data into the canonical
   * series array/object structures expected by ApexCharts.
   * Supports:
   *  - Array of named series objects [{name, data, color}]
   *  - Array of values for single series
   *  - Array of [label, value] tuples (pie/donut style)
   *  - Object maps where keys are categories and values are data points
   * @private
   * @param {*} data - Data input in one of the supported shapes
   * @param {string} chartType - Chart type to influence formatting rules
   * @returns {Array|Object} Normalized series data for ApexCharts
   */
  formatGenericSeries(data, chartType) {
    if (Array.isArray(data)) {
      if (data.length > 0 && typeof data[0] === 'object' && data[0].name) {
        // Multiple series: [{"name": "Series 1", "data": [1, 2, 3], "color": "#008FFB"}] or [{"name": "Series 1", "data": {"Jan": 1, "Feb": 2}}]
        return data.map(series => ({
          name: series.name,
          data: this.formatSingleSeries(series.data, chartType),
          color: series.color,
          dashed: series.dashed || false
        }));
      } else {
        // Single series array: [[x, y], [x, y]] or [value, value]
        return [{
          name: 'Series 1',
          data: this.formatSingleSeries(data, chartType)
        }];
      }
    } else if (typeof data === 'object') {
      // Single series object: {"Jan": 100, "Feb": 120}
      return [{
        name: 'Series 1',
        data: this.formatSingleSeries(data, chartType)
      }];
    }
    return [];
  }

  // ===== INDIVIDUAL CHART CREATION METHODS =====

  createLineChart(container) {
    const data = this.parseData(this.getAttribute('data'));
    const options = this.parseOptions(this.getAttribute('options'));

    if (!this.validateChartData(data)) return;

    const series = this.formatLineSeries(data);
    //const showLegend = (this.getAttribute('show-legend') !== 'false') && (series.length > 1);
    //const legendPosition = this.getAttribute('legend-position') || 'bottom';
    //const showToolbar = this.getAttribute('show-toolbar') !== 'false';
    //const title = this.getAttribute('title') || '';
    const showDataLabels = this.showDataLabels;
    //const xAxisTitle = this.getAttribute('x-axis-title') || '';
    //const yAxisTitle = this.getAttribute('y-axis-title') || '';
    //const curve = this.getAttribute('curve') || 'smooth';
    //const lineWidth = parseInt(this.getAttribute('line-width')) || 3;
    const categories = this.getAttribute('categories') || '[]';

    // Override data labels for realtime charts
    let finalShowDataLabels = showDataLabels;
    const isRealtime = this.getAttribute('realtime') === 'true';
    if (isRealtime) {
      finalShowDataLabels = false;
    }

    /*const legendOptions = {
      show: showLegend,
      position: legendPosition,
      horizontalAlign: 'center',
      verticalAlign: legendPosition === 'top' ? 'top' : 'bottom',
      floating: false,
      offsetX: 0,
      offsetY: 0,
      labels: {
        colors: '#333',
        useSeriesColors: false
      },
      formatter: function(seriesName, opts) {
        return seriesName || 'Series';
      }
    };*/

    // Get base defaults and merge with chart-specific options
    const defaultOptions = {
      ...this.getBaseDefaultOptions('line'),
      chart: {
        ...this.getBaseDefaultOptions('line').chart,
        type: 'line',
        /*height: parseInt(this.getAttribute('height')) || 350,
        toolbar: { show: showToolbar }*/
      },
      /*title: {
        text: title,
        align: 'left',
        style: {
          fontSize: '16px',
          color: '#333'
        }
      },
      // legend: legendOptions,
      dataLabels: {
        enabled: finalShowDataLabels
      },*/
      /*stroke: {
        curve: curve,
        width: lineWidth
      },
      markers: {
        size: this.markerSize,
        strokeColors: '#fff',
        strokeWidth: 2
      },*/
      ...options
    };

    // Preserve axis titles when user options override xaxis/yaxis
    if (options && options.xaxis) {
      defaultOptions.xaxis = { ...this.getBaseDefaultOptions('line').xaxis, ...options.xaxis };
    }
    if (options && options.yaxis) {
      defaultOptions.yaxis = { ...this.getBaseDefaultOptions('line').yaxis, ...options.yaxis };
    }

    // Apply realtime settings if enabled
    /*if (this.getAttribute('realtime') === 'true') {
      defaultOptions.chart = {
        ...defaultOptions.chart,
        animations: { enabled: true, easing: 'linear', dynamicAnimation: { speed: 1000 } },
        zoom: { enabled: false }
      };
      defaultOptions.markers = {
        size: 0
      };
    }*/

    // Apply stacking if requested
    /*if (this.getAttribute('stacked') === 'true') {
      defaultOptions.chart = {
        ...defaultOptions.chart,
        stacked: true
      };

      // When bars are stacked, Apex may round each segment depending on configuration.
      // Set `borderRadiusWhenStacked` to prefer rounding only the outermost segment.
      defaultOptions.plotOptions = {
        ...defaultOptions.plotOptions,
        bar: {
          ...defaultOptions.plotOptions.bar,
          // prefer 'all' so stacked segments get rounded when requested
          borderRadiusWhenStacked: 'last'
        }
      };
    }*/

    // Apply axis titles after merging options to ensure they're not overridden
    /*if (xAxisTitle) {
      const xAxisOffsetY = this.getAttribute('x-axis-offsety');
      defaultOptions.xaxis = {
        ...defaultOptions.xaxis,
        title: {
          text: xAxisTitle,
          style: {
            fontSize: '14px',
            color: '#333'
          },
          offsetY: xAxisOffsetY ? parseInt(xAxisOffsetY) : 2
        }
      };
    }*/

    // Apply x-axis label rotation if specified
    const xAxisLabelRotate = this.getAttribute('x-axis-label-rotate');
    if (xAxisLabelRotate && parseInt(xAxisLabelRotate) !== 0) {
      defaultOptions.xaxis = {
        ...defaultOptions.xaxis,
        position: 'bottom',
        labels: {
          ...defaultOptions.xaxis?.labels,
          rotate: parseInt(xAxisLabelRotate),
          rotateAlways: true,
          offsetY: parseInt(this.getAttribute('x-axis-label-rotate-offsety')) || 25
        }
      };
    }

    /*if (yAxisTitle) {
      defaultOptions.yaxis = {
        ...defaultOptions.yaxis,
        title: {
          text: yAxisTitle,
          style: {
            fontSize: '14px',
            color: '#333'
          }
        }
      };
    }*/

    // Apply categories if specified
    if (categories) {
      try {
        const categoriesArray = JSON.parse(categories);
        defaultOptions.xaxis = {
          ...defaultOptions.xaxis,
          categories: categoriesArray
        };
      } catch (error) {
        console.warn('Invalid categories format:', categories);
      }
    }

    // Apply dashed stroke settings for series that have dashed: true
    const dashArray = series.map(seriesItem => seriesItem.dashed === true ? 5 : 0);
    defaultOptions.stroke = {
      ...defaultOptions.stroke,
      dashArray: dashArray
    };

    // Apply gradient fill if gradient attribute is true
    /*if (this.getAttribute('gradient') !== 'false') {
      defaultOptions.fill = {
        type: 'gradient'
      };
    }*/

    // Ensure bar corner radius default when not provided in options
    try {
      defaultOptions.plotOptions = defaultOptions.plotOptions || {};
      defaultOptions.plotOptions.bar = defaultOptions.plotOptions.bar || {};
      if (typeof defaultOptions.plotOptions.bar.borderRadius === 'undefined') {
        defaultOptions.plotOptions.bar.borderRadius = 4;
      }
      // Apply optional column/columnWidth override if provided via attribute
      if (this.columnWidth) {
        defaultOptions.plotOptions.bar.columnWidth = this.columnWidth;
      }
    } catch (e) {
      // ignore
    }


  


      // Ensure categories are attached to xaxis for line charts
      try {
        let parsedCategories = null;
        try {
          parsedCategories = categories ? JSON.parse(categories) : null;
        } catch (e) {
          parsedCategories = null;
        }

        if (Array.isArray(parsedCategories) && parsedCategories.length > 0) {
          defaultOptions.xaxis = {
            ...(defaultOptions.xaxis || {}),
            categories: parsedCategories
          };
        }
      } catch (e) {
        // ignore
      }

    // If series include per-series colors, copy them into options.colors
    // unless the user explicitly provided options.colors.
    try {
      const seriesColors = Array.isArray(series) ? series.map(s => s && s.color).filter(Boolean) : [];
      if (seriesColors.length > 0 && (!defaultOptions.colors || defaultOptions.colors.length === 0)) {
        defaultOptions.colors = seriesColors;
        if (defaultOptions.legend && defaultOptions.legend.labels) {
          defaultOptions.legend.labels.useSeriesColors = true;
        }
      }
    } catch (e) {
      // ignore
    }

    try {
      try { this._applyAxisOutputFormats(defaultOptions); } catch (e) {}
      // Apply data label orientation (if set) to plotOptions.bar so we don't clobber other bar options
      if (this.hasAttribute('data-label-orientation')) {
        defaultOptions.plotOptions = defaultOptions.plotOptions || {};
        defaultOptions.plotOptions.bar = defaultOptions.plotOptions.bar || {};
        defaultOptions.plotOptions.bar.dataLabels = defaultOptions.plotOptions.bar.dataLabels || {};
        defaultOptions.plotOptions.bar.dataLabels.orientation = this.getAttribute('data-label-orientation');
      }
      if (this.hasAttribute('data-label-position')) {
        defaultOptions.plotOptions = defaultOptions.plotOptions || {};
        defaultOptions.plotOptions.bar = defaultOptions.plotOptions.bar || {};
        defaultOptions.plotOptions.bar.dataLabels = defaultOptions.plotOptions.bar.dataLabels || {};
        defaultOptions.plotOptions.bar.dataLabels.position = this.getAttribute('data-label-position');
      }
      this.chart = new ApexCharts(container, {
        ...defaultOptions,
        series: series
      });
      this.chart.render();
      this._options = defaultOptions; // Store current options for dynamic updates
    } catch (error) {
      console.error('Error creating line chart:', error);
      this.showError('Error creating line chart: ' + error.message);
    }
  }

  createAreaChart(container) {
    const data = this.parseData(this.getAttribute('data'));
    const options = this.parseOptions(this.getAttribute('options'));

    if (!this.validateChartData(data)) return;

    const series = this.formatAreaSeries(data);
    //const showLegend = (this.getAttribute('show-legend') !== 'false') && (series.length > 1);
    //const legendPosition = this.getAttribute('legend-position') || 'bottom';
    //const showToolbar = this.getAttribute('show-toolbar') !== 'false';
    //const title = this.getAttribute('title') || '';
    const showDataLabels = this.showDataLabels;
    //const xAxisTitle = this.getAttribute('x-axis-title') || '';
    //const yAxisTitle = this.getAttribute('y-axis-title') || '';
    //const curve = this.getAttribute('curve') || 'smooth';
    const categories = this.getAttribute('categories') || '[]';

    // Override data labels for realtime charts
    let finalShowDataLabels = showDataLabels;
    const isRealtime = this.getAttribute('realtime') === 'true';
    if (isRealtime) {
      finalShowDataLabels = false;
    }

    /*const legendOptions = {
      show: showLegend,
      position: legendPosition,
      horizontalAlign: 'center',
      verticalAlign: legendPosition === 'top' ? 'top' : 'bottom',
      floating: false,
      offsetX: 0,
      offsetY: 0,
      labels: {
        colors: '#333',
        useSeriesColors: false
      },
      formatter: function(seriesName, opts) {
        return seriesName || 'Series';
      }
    };*/

    const defaultOptions = {
      ...this.getBaseDefaultOptions('area'),
      chart: {
        ...this.getBaseDefaultOptions('area').chart,
        type: 'area',
        //height: parseInt(this.getAttribute('height')) || 400,
        //toolbar: { show: showToolbar },
        animations: { enabled: true }
      },
      /*title: {
        text: title,
        align: 'left',
        style: {
          fontSize: '16px',
          color: '#333'
        }
      },*/
      // keep responsive/grid overrides that differ from base
      /*responsive: [{
        breakpoint: 480,
        options: {
          chart: { height: 250 },
          legend: {
            position: 'bottom',
            horizontalAlign: 'center',
            verticalAlign: 'bottom',
            offsetX: 0,
            offsetY: 0
          }
        }
      }],*/
      /*grid: {
        show: true,
        borderColor: '#e7e7e7',
        strokeDashArray: 3,
        xaxis: {
          lines: {
            show: true
          }
        },
        yaxis: {
          lines: {
            show: true
          }
        },
        padding: {
          top: 10, right: 20, bottom: 10, left: 10
        }
      },
      //legend: legendOptions,
      dataLabels: {
        enabled: finalShowDataLabels
      },
      stroke: {
        curve: curve,
        width: 2
      },
      markers: {
        size: this.markerSize,
        strokeColors: '#fff',
        strokeWidth: 2
      },*/
      ...options
    };

    // Preserve axis titles when user options override xaxis/yaxis
    if (options && options.xaxis) {
      defaultOptions.xaxis = { ...this.getBaseDefaultOptions('area').xaxis, ...options.xaxis };
    }
    if (options && options.yaxis) {
      defaultOptions.yaxis = { ...this.getBaseDefaultOptions('area').yaxis, ...options.yaxis };
    }

    // If `sparkline` attribute is enabled, set the chart.sparkline.enabled flag
    if (this.sparkline) {
      try {
        defaultOptions.chart = defaultOptions.chart || {};
        defaultOptions.chart.sparkline = { enabled: true };
      } catch (e) {}
    }

    // Apply realtime settings if enabled
    /*if (this.getAttribute('realtime') === 'true') {
      defaultOptions.chart = {
        ...defaultOptions.chart,
        animations: { enabled: true, easing: 'linear', dynamicAnimation: { speed: 1000 } },
        zoom: { enabled: false }
      };
      defaultOptions.markers = {
        size: 0
      };
    }*/

    
    // Apply stacking if requested
    if (this.getAttribute('stacked') === 'true') {
      defaultOptions.chart = {
        ...defaultOptions.chart,
        stacked: true
      };
      // prefer 'all' so stacked segments get rounded when requested
      /*defaultOptions.plotOptions = {
        ...defaultOptions.plotOptions,
        bar: {
          ...((defaultOptions.plotOptions && defaultOptions.plotOptions.bar) || {}),
          borderRadiusWhenStacked: 'last'
        }
      };*/
    }


    // Apply axis titles after merging options to ensure they're not overridden
    /*if (xAxisTitle) {
      const xAxisOffsetY = this.getAttribute('x-axis-offsety');
      defaultOptions.xaxis = {
        ...defaultOptions.xaxis,
        title: {
          text: xAxisTitle,
          style: {
            fontSize: '14px',
            color: '#333'
          },
          offsetY: xAxisOffsetY ? parseInt(xAxisOffsetY) : 2
        }
      };
    }*/

    // Apply x-axis label rotation if specified
    const xAxisLabelRotate = this.getAttribute('x-axis-label-rotate');
    if (xAxisLabelRotate && parseInt(xAxisLabelRotate) !== 0) {
      defaultOptions.xaxis = {
        ...defaultOptions.xaxis,
        position: 'bottom',
        labels: {
          ...defaultOptions.xaxis?.labels,
          rotate: parseInt(xAxisLabelRotate),
          rotateAlways: true,
          offsetY: parseInt(this.getAttribute('x-axis-label-rotate-offsety')) || 25
        }
      };
    }

    /*if (yAxisTitle) {
      defaultOptions.yaxis = {
        ...defaultOptions.yaxis,
        title: {
          text: yAxisTitle,
          style: {
            fontSize: '14px',
            color: '#333'
          }
        }
      };
    }*/

    // Apply categories if specified
    if (categories) {
      try {
        const categoriesArray = JSON.parse(categories);
        defaultOptions.xaxis = {
          ...defaultOptions.xaxis,
          categories: categoriesArray
        };
      } catch (error) {
        console.warn('Invalid categories format:', categories);
      }
    }

    // Apply gradient fill if gradient attribute is true
    /*if (this.getAttribute('gradient') !== 'false') {
      defaultOptions.fill = {
        type: 'gradient'
      };
    }*/

    try {
      try { this._applyAxisOutputFormats(defaultOptions); } catch (e) {}
      this.chart = new ApexCharts(container, {
        ...defaultOptions,
        series: series
      });
      this.chart.render();
      this._options = defaultOptions; // Store current options for dynamic updates
    } catch (error) {
      console.error('Error creating area chart:', error);
      this.showError('Error creating area chart: ' + error.message);
    }
  }

  createColumnChart(container) {
    const data = this.parseData(this.getAttribute('data'));
    const options = this.parseOptions(this.getAttribute('options'));

    if (!this.validateChartData(data)) return;

    const series = this.formatBarSeries(data);
    //const showLegend = (this.getAttribute('show-legend') !== 'false') && (series.length > 1);
    //const legendPosition = this.getAttribute('legend-position') || 'bottom';
    //const showToolbar = this.getAttribute('show-toolbar') !== 'false';
    //const title = this.getAttribute('title') || '';
    const showDataLabels = this.showDataLabels;
    //const xAxisTitle = this.getAttribute('x-axis-title') || '';
    //const yAxisTitle = this.getAttribute('y-axis-title') || '';
    const barOrientation = false
    //const curve = this.getAttribute('curve') || 'smooth';
    const categories = this.getAttribute('categories') || '[]';

    // Override data labels for realtime charts
    let finalShowDataLabels = showDataLabels;
    const isRealtime = this.getAttribute('realtime') === 'true';
    if (isRealtime) {
      finalShowDataLabels = false;
    }

    /*const legendOptions = {
      show: showLegend,
      position: legendPosition,
      horizontalAlign: 'center',
      verticalAlign: legendPosition === 'top' ? 'top' : 'bottom',
      floating: false,
      offsetX: 0,
      offsetY: 0,
      labels: {
        colors: '#333',
        useSeriesColors: false
      },
      formatter: function(seriesName, opts) {
        return seriesName || 'Series';
      }
    };*/

    // Base options following vanilla-js bar chart examples
    const defaultOptions = {
      ...this.getBaseDefaultOptions('column'),
      series: series,
      chart: {
        ...this.getBaseDefaultOptions('column').chart,
        type: 'bar',
        //height: parseInt(this.getAttribute('height')) || 350,
        //toolbar: { show: showToolbar }
      },
      plotOptions: {
        bar: {
          horizontal: barOrientation, // Will be false for vertical columns
          borderRadius: this.borderRadius,
          // For vertical columns we want rounded corners on both top and bottom ('around').
          // For horizontal bars keep 'end' to round only the outer end.
          borderRadiusApplication: 'around',
          borderRadiusWhenStacked: 'all',
        }
      },
      // Allow explicit orientation of data labels on bar/column charts (applied below to avoid replacement)
      /*dataLabels: {
        enabled: finalShowDataLabels
      },
      stroke: {
        curve: curve,
        width: 2
      },
      title: {
        text: title,
        align: 'left',
        style: {
          fontSize: '16px',
          color: '#333'
        }
      },
      legend: legendOptions,
      grid: {
        show: this.gridShow,
        borderColor: '#e7e7e7',
        strokeDashArray: 3,
        xaxis: { lines: { show: true } },
        yaxis: { lines: { show: true } },
        padding: {
          top: 10, right: 20, bottom: 10, left: 10
        }
      },*/
      ...options
    };

    // Preserve axis titles when user options override xaxis/yaxis
    if (options && options.xaxis) {
      defaultOptions.xaxis = { ...this.getBaseDefaultOptions('column').xaxis, ...options.xaxis };
    }
    if (options && options.yaxis) {
      defaultOptions.yaxis = { ...this.getBaseDefaultOptions('column').yaxis, ...options.yaxis };
    }

    // Apply realtime settings if enabled
    /*if (this.getAttribute('realtime') === 'true') {
      defaultOptions.chart = {
        ...defaultOptions.chart,
        animations: { enabled: true, easing: 'linear', dynamicAnimation: { speed: 1000 } },
        zoom: { enabled: false }
      };
    }*/

    // Apply stacking if requested
    if (this.getAttribute('stacked') === 'true') {
      defaultOptions.chart = {
        ...defaultOptions.chart,
        stacked: true
      };
      // When columns are stacked, prefer rounding all stacked segments
          defaultOptions.plotOptions = {
        ...defaultOptions.plotOptions,
        bar: {
          ...((defaultOptions.plotOptions && defaultOptions.plotOptions.bar) || {}),
          borderRadiusWhenStacked: 'last',
          borderRadius: this.borderRadius,           // radius from attribute
          borderRadiusApplication: 'end' // top & bottom corners
        }
      };
    }

    // Apply axis titles after merging options to ensure they're not overridden
    /*if (xAxisTitle) {
      const xAxisOffsetY = this.getAttribute('x-axis-offsety');
      defaultOptions.xaxis = {
        ...defaultOptions.xaxis,
        title: {
          text: xAxisTitle,
          style: {
            fontSize: '14px',
            color: '#333'
          },
          offsetY: xAxisOffsetY ? parseInt(xAxisOffsetY) : 2
        }
      };
    }*/

    // Apply x-axis label rotation if specified
    const xAxisLabelRotate = this.getAttribute('x-axis-label-rotate');
    if (xAxisLabelRotate && parseInt(xAxisLabelRotate) !== 0) {
      defaultOptions.xaxis = {
        ...defaultOptions.xaxis,
        position: 'bottom',
        labels: {
          ...defaultOptions.xaxis?.labels,
          rotate: parseInt(xAxisLabelRotate),
          rotateAlways: true,
          offsetY: parseInt(this.getAttribute('x-axis-label-rotate-offsety')) || 25
        }
      };
    }

    /*if (yAxisTitle) {
      defaultOptions.yaxis = {
        ...defaultOptions.yaxis,
        title: {
          text: yAxisTitle,
          style: {
            fontSize: '14px',
            color: '#333'
          }
        }
      };
    }*/

    // Apply categories if specified
    if (categories) {
      try {
        const categoriesArray = JSON.parse(categories);
        defaultOptions.xaxis = {
          ...defaultOptions.xaxis,
          categories: categoriesArray
        };        
      } catch (error) {
        console.warn('Invalid categories format:', categories);
      }
    }

    // Apply gradient fill if gradient attribute is true
    /*if (this.getAttribute('gradient') !== 'false') {
      defaultOptions.fill = {
        type: 'gradient'
      };
    }*/

    // If series include per-series colors, copy them into options.colors
    // unless the user explicitly provided options.colors.
    try {
      const seriesColors = Array.isArray(series) ? series.map(s => s && s.color).filter(Boolean) : [];
      if (seriesColors.length > 0 && (!defaultOptions.colors || defaultOptions.colors.length === 0)) {
        defaultOptions.colors = seriesColors;
        if (defaultOptions.legend && defaultOptions.legend.labels) {
          defaultOptions.legend.labels.useSeriesColors = true;
        }
      }
    } catch (e) {
      // ignore
    }

    try {
      try { this._applyAxisOutputFormats(defaultOptions); } catch (e) {}
      // Apply data label orientation (if set) to bar charts
      if (this.hasAttribute('data-label-orientation')) {
        defaultOptions.plotOptions = defaultOptions.plotOptions || {};
        defaultOptions.plotOptions.bar = defaultOptions.plotOptions.bar || {};
        defaultOptions.plotOptions.bar.dataLabels = defaultOptions.plotOptions.bar.dataLabels || {};
        defaultOptions.plotOptions.bar.dataLabels.orientation = this.getAttribute('data-label-orientation');
      }
      if (this.hasAttribute('data-label-position')) {
        defaultOptions.plotOptions = defaultOptions.plotOptions || {};
        defaultOptions.plotOptions.bar = defaultOptions.plotOptions.bar || {};
        defaultOptions.plotOptions.bar.dataLabels = defaultOptions.plotOptions.bar.dataLabels || {};
        defaultOptions.plotOptions.bar.dataLabels.position = this.getAttribute('data-label-position');
      }
      // Ensure columnWidth is present in the final options before creating the chart
      try {
        if (this.columnWidth) {
          defaultOptions.plotOptions = defaultOptions.plotOptions || {};
          defaultOptions.plotOptions.bar = defaultOptions.plotOptions.bar || {};
          defaultOptions.plotOptions.bar.columnWidth = this.columnWidth;
        }
      } catch (e) {}
      this.chart = new ApexCharts(container, defaultOptions);
      this.chart.render();
      this._options = defaultOptions; // Store current options for dynamic updates
    } catch (error) {
      console.error('Error creating column chart:', error);
      this.showError('Error creating column chart: ' + error.message);
    }
  }

  createBarChart(container) {
    const data = this.parseData(this.getAttribute('data'));
    const options = this.parseOptions(this.getAttribute('options'));

    if (!this.validateChartData(data)) return;

    const series = this.formatBarSeries(data);
    //const showLegend = this.getAttribute('show-legend') === 'true' || (this.getAttribute('show-legend') !== 'false' && series.length > 1);
    //const legendPosition = this.getAttribute('legend-position') || 'bottom';
    //const showToolbar = this.getAttribute('show-toolbar') !== 'false';
    //const title = this.getAttribute('title') || '';
    const showDataLabels = this.showDataLabels;
    const xAxisTitle = this.getAttribute('x-axis-title') || '';
    const yAxisTitle = this.getAttribute('y-axis-title') || '';
    const categories = this.getAttribute('categories') || '[]';
    const dataLabelPositionAttr = this.getAttribute('data-label-position') || 'center';

    // Override data labels for realtime charts
    let finalShowDataLabels = showDataLabels;
    const isRealtime = this.getAttribute('realtime') === 'true';
    if (isRealtime) {
      finalShowDataLabels = false;
    }

    /*const legendOptions = {
      show: showLegend,
      position: legendPosition,
      horizontalAlign: 'center',
      verticalAlign: legendPosition === 'top' ? 'top' : 'bottom',
      floating: false,
      offsetX: 0,
      offsetY: 0,
      labels: {
        colors: '#333',
        useSeriesColors: false
      },
      formatter: function(seriesName, opts) {
        return seriesName || 'Series';
      }
    };*/

    // Base options following the provided horizontal bar chart example
    const defaultOptions = {
      ...this.getBaseDefaultOptions('bar'),
      series: series,
      chart: {
        ...this.getBaseDefaultOptions('bar').chart,
        type: 'bar',
        //height: parseInt(this.getAttribute('height')) || 350,
        //toolbar: { show: showToolbar }
      },
      plotOptions: {
        bar: {
          borderRadius: this.borderRadius,
          borderRadiusApplication: 'around',
          horizontal: true,
          borderRadiusWhenStacked: 'all',
        }
      },
      dataLabels: {
        enabled: finalShowDataLabels,
        textAnchor: 'middle',
        style: {
          colors: ['#fff'],
          fontSize: '12px'
        },
        formatter: function(val) {
          return val.toString();
        },
        offsetX: (dataLabelPositionAttr === 'center') ? 0 : 30,
        dropShadow: {
          enabled: false
        }
      },
      /*title: {
        text: title,
        align: 'left',
        style: {
          fontSize: '16px',
          color: '#333'
        }
      },
      legend: legendOptions,*/
      xaxis: (() => {
        const xAxisOffsetY = this.getAttribute('x-axis-offsety');
        const xAxisLabelRotate = this.getAttribute('x-axis-label-rotate');
        const xaxisConfig = {
          title: {
            text: xAxisTitle || '',
            style: {
              fontSize: '14px',
              color: '#333'
            },
            offsetY: xAxisOffsetY ? parseInt(xAxisOffsetY) : 2
          }
        };
        
        if (xAxisLabelRotate && parseInt(xAxisLabelRotate) !== 0) {
          xaxisConfig.position = 'bottom';
          xaxisConfig.labels = {
            rotate: parseInt(xAxisLabelRotate),
            rotateAlways: true,
            offsetY: parseInt(this.getAttribute('x-axis-label-rotate-offsety')) || 25
          };
        }

        // Ensure labels are visible by default
        xaxisConfig.labels = {
          ...(xaxisConfig.labels || {}),
          show: true
        };

        return xaxisConfig;
      })(),
      // yaxis: keep title/labels; categories will be attached to xaxis.categories
      yaxis: {
        title: {
          text: yAxisTitle || '',
          style: {
            fontSize: '14px',
            color: '#333'
          }
        },
        labels: {
          show: true
        }
      },
      /*grid: {
        show: this.gridShow,
        borderColor: '#e7e7e7',
        strokeDashArray: 3,
        xaxis: { lines: { show: true } },
        yaxis: { lines: { show: true } },
        padding: {
          top: 10, right: 20, bottom: 10, left: 10
        }
      },*/
      ...options
    };

    // Apply realtime settings if enabled
    /*if (this.getAttribute('realtime') === 'true') {
      defaultOptions.chart = {
        ...defaultOptions.chart,
        animations: { enabled: true, easing: 'linear', dynamicAnimation: { speed: 1000 } },
        zoom: { enabled: false }
      };
    }*/

    // Apply gradient fill if gradient attribute is true
    /*if (this.getAttribute('gradient') !== 'false') {
      defaultOptions.fill = {
        type: 'gradient'
      };
    }*/

    
    // Ensure bar corner radius default when not provided in options
    try {
      defaultOptions.plotOptions = defaultOptions.plotOptions || {};
      defaultOptions.plotOptions.bar = defaultOptions.plotOptions.bar || {};
      if (typeof defaultOptions.plotOptions.bar.borderRadius === 'undefined') {
        defaultOptions.plotOptions.bar.borderRadius = 4;
      }
      // Apply optional column-width override if provided via attribute
      if (this.columnWidth) {
        defaultOptions.plotOptions.bar.columnWidth = this.columnWidth;
      }
    } catch (e) {
      // ignore
    }

    // If series include per-series colors, copy them into options.colors
    // unless the user explicitly provided options.colors.
    try {
      const seriesColors = Array.isArray(series) ? series.map(s => s && s.color).filter(Boolean) : [];
      if (seriesColors.length > 0 && (!defaultOptions.colors || defaultOptions.colors.length === 0)) {
        defaultOptions.colors = seriesColors;
        if (defaultOptions.legend && defaultOptions.legend.labels) {
          defaultOptions.legend.labels.useSeriesColors = true;
        }
      }
    } catch (e) {
      // ignore
    }

    // Apply stacking if requested
    if (this.getAttribute('stacked') === 'true') {
      defaultOptions.chart = {
        ...defaultOptions.chart,
        stacked: true
      };
      // Prefer rounding all stacked segments for bar charts
      defaultOptions.plotOptions = {
        ...defaultOptions.plotOptions,
        bar: {
          ...((defaultOptions.plotOptions && defaultOptions.plotOptions.bar) || {}),
          borderRadiusWhenStacked: 'last',
          borderRadius: this.borderRadius,
          borderRadiusApplication: 'end',
        }
      };
    }

    // Attach parsed categories to yaxis.categories for horizontal bar charts.
    // ApexCharts handles horizontal bars with categories on y-axis.
    try {
      const parsed = categories ? JSON.parse(categories) : null;
      if (Array.isArray(parsed) && parsed.length > 0) {
        defaultOptions.yaxis = {
          ...(defaultOptions.yaxis || {}),
          categories: parsed
        };
        // Keep xaxis.categories in sync for consistency
        defaultOptions.xaxis = {
          ...(defaultOptions.xaxis || {}),
          categories: parsed
        };
      }
    } catch (e) {
      // ignore invalid categories
    }



    try {
      try { this._applyAxisOutputFormats(defaultOptions); } catch (e) {}
      // Ensure columnWidth is present in the final options before creating the chart
      try {
        if (this.columnWidth) {
          defaultOptions.plotOptions = defaultOptions.plotOptions || {};
          defaultOptions.plotOptions.bar = defaultOptions.plotOptions.bar || {};
          defaultOptions.plotOptions.bar.columnWidth = this.columnWidth;
        }
      } catch (e) {}
      this.chart = new ApexCharts(container, defaultOptions);
      this.chart.render();
      this._options = defaultOptions; // Store current options for dynamic updates
    } catch (error) {
      console.error('Error creating bar chart:', error);
      this.showError('Error creating bar chart: ' + error.message);
    }
  }

  createPieChart(container) {
    const data = this.parseData(this.getAttribute('data'));
    const options = this.parseOptions(this.getAttribute('options'));

    if (!this.validateChartData(data)) return;

    const series = this.formatPieSeries(data);
    //const showLegend = this.getAttribute('show-legend') !== 'false';
    //const legendPosition = this.getAttribute('legend-position') || 'bottom';
    //const showToolbar = this.getAttribute('show-toolbar') !== 'false';
    //const title = this.getAttribute('title') || '';
    const showDataLabels = this.showDataLabels;

    // Override data labels for realtime charts
    let finalShowDataLabels = showDataLabels;
    const isRealtime = this.getAttribute('realtime') === 'true';
    if (isRealtime) {
      finalShowDataLabels = false;
    }

    /*const legendOptions = {
      show: showLegend,
      position: legendPosition,
      horizontalAlign: 'center',
      verticalAlign: legendPosition === 'top' ? 'top' : 'bottom',
      floating: false,
      offsetX: 0,
      offsetY: 0,
      labels: {
        colors: '#333',
        useSeriesColors: false
      },
      formatter: function(seriesName, opts) {
        return seriesName || 'Series';
      }
    };*/

    // Get base defaults and merge with chart-specific options
    const defaultOptions = {
      ...this.getBaseDefaultOptions('pie'),
      chart: {
        ...this.getBaseDefaultOptions('pie').chart,
        type: 'pie',
        //height: parseInt(this.getAttribute('height')) || 350,
        //toolbar: { show: showToolbar }
      },
      /*title: {
        text: title,
        align: 'left',
        style: {
          fontSize: '16px',
          fontWeight: 'bold',
          color: '#333'
        }
      },
      legend: legendOptions,
      dataLabels: {
        enabled: finalShowDataLabels,
        style: {
          fontSize: '12px',
          colors: ['#fff']
        }
      },*/
      ...options
    };

    // Apply realtime settings if enabled
    /*if (this.getAttribute('realtime') === 'true') {
      defaultOptions.chart = {
        ...defaultOptions.chart,
        animations: { enabled: true, easing: 'linear', dynamicAnimation: { speed: 1000 } },
        zoom: { enabled: false }
      };
    }*/

    // Handle labels and colors for pie charts
    if (Array.isArray(data) && data.length > 0) {
      if (data.length > 0 && typeof data[0] === 'object' && data[0].name) {
        // New format: [{"name": "Desktop", "data": 44, "color": "#008FFB"}]
        defaultOptions.labels = data.map(item => item.name);
        defaultOptions.colors = data.map(item => item.color).filter(color => color);
      } else if (Array.isArray(data[0]) && data[0].length === 2) {
        // Old format: [["Desktop", 44], ["Mobile", 23]]
        defaultOptions.labels = data.map(item => item[0]);
      } else if (typeof data === 'object') {
        defaultOptions.labels = Object.keys(data);
      }
    }

    // Apply gradient fill if gradient attribute is true
    /*if (this.getAttribute('gradient') !== 'false') {
      defaultOptions.fill = {
        type: 'gradient'
      };
    }*/

    try {
      try { this._applyAxisOutputFormats(defaultOptions); } catch (e) {}
      this.chart = new ApexCharts(container, {
        ...defaultOptions,
        series: series
      });
      this.chart.render();
      this._options = defaultOptions; // Store current options for dynamic updates
    } catch (error) {
      console.error('Error creating pie chart:', error);
      this.showError('Error creating pie chart: ' + error.message);
    }
  }

  createDonutChart(container) {
    const data = this.parseData(this.getAttribute('data'));
    const options = this.parseOptions(this.getAttribute('options'));

    if (!this.validateChartData(data)) return;

    const series = this.formatDonutSeries(data);
    //const showLegend = this.getAttribute('show-legend') !== 'false';
    //const legendPosition = this.getAttribute('legend-position') || 'bottom';
    //const showToolbar = this.getAttribute('show-toolbar') !== 'false';
    //const title = this.getAttribute('title') || '';
    const showDataLabels = this.showDataLabels;
    const donutShowTotal = this.getAttribute('donut-show-total') !== 'false';

    // Override data labels for realtime charts
    let finalShowDataLabels = showDataLabels;
    const isRealtime = this.getAttribute('realtime') === 'true';
    if (isRealtime) {
      finalShowDataLabels = false;
    }

    /*const legendOptions = {
      show: showLegend,
      position: legendPosition,
      horizontalAlign: 'center',
      verticalAlign: legendPosition === 'top' ? 'top' : 'bottom',
      floating: false,
      offsetX: 0,
      offsetY: 0,
      labels: {
        colors: '#333',
        useSeriesColors: false
      },
      formatter: function(seriesName, opts) {
        return seriesName || 'Series';
      }
    };*/

    // Get base defaults and merge with chart-specific options
    const defaultOptions = {
      ...this.getBaseDefaultOptions('donut'),
      chart: {
        ...this.getBaseDefaultOptions('donut').chart,
        type: 'donut',
        //height: parseInt(this.getAttribute('height')) || 350,
        //toolbar: { show: showToolbar }
      },
      /*title: {
        text: title,
        align: 'left',
        style: {
          fontSize: '16px',
          fontWeight: 'bold',
          color: '#333'
        }
      },
      legend: legendOptions,
      dataLabels: {
        enabled: finalShowDataLabels,
        style: {
          fontSize: '12px',
          colors: ['#fff']
        }
      },*/
      plotOptions: {
        pie: {
          donut: {
            labels: {
              show: showDataLabels,
              total: {
                show: donutShowTotal
              }
            }
          }
        }
      },
      ...options
    };

    // Apply realtime settings if enabled
    /*if (this.getAttribute('realtime') === 'true') {
      defaultOptions.chart = {
        ...defaultOptions.chart,
        animations: { enabled: true, easing: 'linear', dynamicAnimation: { speed: 1000 } },
        zoom: { enabled: false }
      };
    }*/

    // Handle labels and colors for donut charts
    if (Array.isArray(data) && data.length > 0) {
      if (data.length > 0 && typeof data[0] === 'object' && data[0].name) {
        // New format: [{"name": "Chrome", "data": 65, "color": "#008FFB"}]
        defaultOptions.labels = data.map(item => item.name);
        defaultOptions.colors = data.map(item => item.color).filter(color => color);
      } else if (Array.isArray(data[0]) && data[0].length === 2) {
        // Old format: [["Chrome", 65], ["Firefox", 20]]
        defaultOptions.labels = data.map(item => item[0]);
      } else if (typeof data === 'object') {
        defaultOptions.labels = Object.keys(data);
      }
    }

    // Apply gradient fill if gradient attribute is true
    /*if (this.getAttribute('gradient') !== 'false') {
      defaultOptions.fill = {
        type: 'gradient'
      };
    }*/

    try {
      try { this._applyAxisOutputFormats(defaultOptions); } catch (e) {}
      this.chart = new ApexCharts(container, {
        ...defaultOptions,
        series: series
      });
      this.chart.render();
      this._options = defaultOptions; // Store current options for dynamic updates
    } catch (error) {
      console.error('Error creating donut chart:', error);
      this.showError('Error creating donut chart: ' + error.message);
    }
  }

  createRadialBarChart(container) {
    const data = this.parseData(this.getAttribute('data'));
    const options = this.parseOptions(this.getAttribute('options'));

    if (!this.validateChartData(data)) return;

    const series = this.formatRadialBarSeries(data);
    // Default radialBar legend hidden; only show when `show-legend="true"` is set
    //const showLegend = this.getAttribute('show-legend') === 'true';
    //const legendPosition = this.getAttribute('legend-position') || 'bottom';
    //const showToolbar = this.getAttribute('show-toolbar') !== 'false';
    //const title = this.getAttribute('title') || '';
    const showDataLabels = this.showDataLabels;
    const hollowSize = this.getAttribute('hollow-size') || '50%';
    const dashedRadial = this.getAttribute('dashed-radial') === 'true';
    const trackWidth = this.getAttribute('track-width') || '97%';

    // Override data labels for realtime charts
    let finalShowDataLabels = showDataLabels;
    const isRealtime = this.getAttribute('realtime') === 'true';
    if (isRealtime) {
      finalShowDataLabels = false;
    }

    /*const legendOptions = {
      show: showLegend && legendPosition !== 'hidden',
      position: legendPosition,
      horizontalAlign: 'center',
      verticalAlign: legendPosition === 'top' ? 'top' : 'bottom',
      floating: false,
      offsetX: 0,
      offsetY: 0,
      labels: {
        colors: '#333',
        useSeriesColors: false
      },
      formatter: function(seriesName, opts) {
        return seriesName || 'Series';
      }
    };*/

    // Get base defaults and merge with chart-specific options
    const defaultOptions = {
      ...this.getBaseDefaultOptions('radialBar'),
      chart: {
        ...this.getBaseDefaultOptions('radialBar').chart,
        type: 'radialBar',
        //height: parseInt(this.getAttribute('height')) || 350,
        //toolbar: { show: showToolbar }
      },
      /*title: {
        text: title,
        align: 'left',
        style: {
          fontSize: '16px',
          fontWeight: 'bold',
          color: '#333'
        }
      },
      legend: legendOptions,*/
      stroke: {
        lineCap: 'round'
      },
      plotOptions: {
        radialBar: {
          hollow: {
            size: hollowSize
          },
          track: {
            strokeWidth: trackWidth
          }
          ,
          startAngle: this.startAngle,
          endAngle: this.endAngle,
          barLabels: {
            enabled: this.barLabels === true,
            useSeriesColors: true,
            offsetX: -40,
            fontSize: '14px',
            formatter: function(seriesName, opts) {
              return seriesName + ":  " + (opts && opts.w && opts.w.globals && opts.w.globals.series ? opts.w.globals.series[opts.seriesIndex] : '');
            }
          }
        }
      },
      ...(dashedRadial && {
        stroke: {
          dashArray: 4
        }
      }),
      dataLabels: {
        enabled: finalShowDataLabels,
        formatter: function(val) {
          return val + "%";
        },
        style: {
          fontSize: '14px',
          colors: ['#fff']
        }
      },
      ...options
    };

    // Apply realtime settings if enabled
    /*if (this.getAttribute('realtime') === 'true') {
      defaultOptions.chart = {
        ...defaultOptions.chart,
        animations: { enabled: true, easing: 'linear', dynamicAnimation: { speed: 1000 } },
        zoom: { enabled: false }
      };
    }*/

    // Handle labels and colors for radial bar charts
    if (Array.isArray(data) && data.length > 0) {
      if (data.length > 0 && typeof data[0] === 'object' && data[0].name) {
        // New format: [{"name": "Progress", "data": 70, "color": "#008FFB"}]
        defaultOptions.labels = data.map(item => item.name);
        defaultOptions.colors = data.map(item => item.color).filter(color => color);
      } else if (Array.isArray(data[0]) && data[0].length === 2) {
        // Old format: [["Progress", 70], ["Score", 80]]
        defaultOptions.labels = data.map(item => item[0]);
      } else if (typeof data === 'object') {
        defaultOptions.labels = Object.keys(data);
      }
    }

    // Apply gradient fill if gradient attribute is true
    /*if (this.getAttribute('gradient') !== 'false') {
      defaultOptions.fill = {
        type: 'gradient'
      };
    }*/

    try {
      try { this._applyAxisOutputFormats(defaultOptions); } catch (e) {}
      this.chart = new ApexCharts(container, {
        ...defaultOptions,
        series: series
      });
      this.chart.render();
      this._options = defaultOptions; // Store current options for dynamic updates
    } catch (error) {
      console.error('Error creating radial bar chart:', error);
      this.showError('Error creating radial bar chart: ' + error.message);
    }
  }

  createScatterChart(container) {
    const data = this.parseData(this.getAttribute('data'));
    const options = this.parseOptions(this.getAttribute('options'));

    if (!this.validateChartData(data)) return;

    const series = this.formatScatterSeries(data);
    //const showLegend = this.getAttribute('show-legend') !== 'false';
    //const legendPosition = this.getAttribute('legend-position') || 'bottom';
    //const showToolbar = this.getAttribute('show-toolbar') !== 'false';
    //const title = this.getAttribute('title') || '';
    const showDataLabels = this.showDataLabels;
    //const xAxisTitle = this.getAttribute('x-axis-title') || '';
    //const yAxisTitle = this.getAttribute('y-axis-title') || '';
    //const curve = this.getAttribute('curve') || 'smooth';
    const categories = this.getAttribute('categories') || '[]';

    // Override data labels for realtime charts
    let finalShowDataLabels = showDataLabels;
    const isRealtime = this.getAttribute('realtime') === 'true';
    if (isRealtime) {
      finalShowDataLabels = false;
    }

    /*const legendOptions = {
      show: showLegend !== false, // Explicitly show for scatter plots
      position: legendPosition,
      horizontalAlign: legendPosition === 'right' ? 'left' : 'center',
      verticalAlign: legendPosition === 'top' ? 'top' : (legendPosition === 'bottom' ? 'bottom' : 'middle'),
      floating: legendPosition === 'right',
      offsetX: legendPosition === 'right' ? 10 : 0,
      offsetY: legendPosition === 'right' ? 0 : 0,
      labels: {
        colors: '#333',
        useSeriesColors: true
      },
      formatter: function(seriesName, opts) {
        return seriesName || 'Series';
      }
    };*/

    // Get base defaults and merge with chart-specific options
    const defaultOptions = {
      ...this.getBaseDefaultOptions('scatter'),
      chart: {
        ...this.getBaseDefaultOptions('scatter').chart,
        type: 'scatter',
        //height: parseInt(this.getAttribute('height')) || 350,
        //toolbar: { show: showToolbar },
        zoom: { enabled: true, type: 'xy' } // Scatter charts benefit from zoom
      },
      /*title: {
        text: title,
        align: 'left',
        style: {
          fontSize: '16px',
          color: '#333'
        }
      },
      legend: legendOptions,
      dataLabels: {
        enabled: finalShowDataLabels
      },
      stroke: {
        curve: curve,
        width: 2
      },*/
      /*markers: {
        size: this.markerSize,
        strokeColors: '#fff',
        strokeWidth: 2
      },*/
      xaxis: {
        ...this.getBaseDefaultOptions('scatter').xaxis,
        tickAmount: 10,
        labels: {
          formatter: function(val) {
            return parseFloat(val).toFixed(1);
          }
        }
      },
      yaxis: {
        ...this.getBaseDefaultOptions('scatter').yaxis,
        tickAmount: 7
      },
      ...options
    };

    // Preserve axis titles when user options override xaxis/yaxis
    if (options && options.xaxis) {
      defaultOptions.xaxis = { ...defaultOptions.xaxis, ...options.xaxis };
    }
    if (options && options.yaxis) {
      defaultOptions.yaxis = { ...defaultOptions.yaxis, ...options.yaxis };
    }

    // Apply realtime settings if enabled
    /*if (this.getAttribute('realtime') === 'true') {
      defaultOptions.chart = {
        ...defaultOptions.chart,
        animations: { enabled: true, easing: 'linear', dynamicAnimation: { speed: 1000 } },
        zoom: { enabled: false }
      };
      defaultOptions.markers = {
        size: 0
      };
    }*/

    // Apply axis titles after merging options to ensure they're not overridden
    /*if (xAxisTitle) {
      const xAxisOffsetY = this.getAttribute('x-axis-offsety');
      defaultOptions.xaxis = {
        ...defaultOptions.xaxis,
        title: {
          text: xAxisTitle,
          style: {
            fontSize: '14px',
            color: '#333'
          },
          offsetY: xAxisOffsetY ? parseInt(xAxisOffsetY) : 2
        }
      };
    }*/

    // Apply x-axis label rotation if specified
    
    const xAxisLabelRotate = this.getAttribute('x-axis-label-rotate');
    if (xAxisLabelRotate && parseInt(xAxisLabelRotate) !== 0) {
      defaultOptions.xaxis = {
        ...defaultOptions.xaxis,
        position: 'bottom',
        labels: {
          ...defaultOptions.xaxis?.labels,
          rotate: parseInt(xAxisLabelRotate),
          rotateAlways: true,
          offsetY: parseInt(this.getAttribute('x-axis-label-rotate-offsety')) || 25
        }
      };
    }

    /*if (yAxisTitle) {
      defaultOptions.yaxis = {
        ...defaultOptions.yaxis,
        title: {
          text: yAxisTitle,
          style: {
            fontSize: '14px',
            color: '#333'
          }
        }
      };
    }*/

    // Apply categories if specified
    if (categories) {
      try {
        const categoriesArray = JSON.parse(categories);
        defaultOptions.xaxis = {
          ...defaultOptions.xaxis,
          categories: categoriesArray
        };
      } catch (error) {
        console.warn('Invalid categories format:', error);
      }
    }

    // Apply gradient fill if gradient attribute is true
    /*if (this.getAttribute('gradient') !== 'false') {
      defaultOptions.fill = {
        type: 'gradient'
      };
    }*/

    try {
      try { this._applyAxisOutputFormats(defaultOptions); } catch (e) {}
      this.chart = new ApexCharts(container, {
        ...defaultOptions,
        series: series
      });
      this.chart.render();
      this._options = defaultOptions; // Store current options for dynamic updates
    } catch (error) {
      console.error('Error creating scatter chart:', error);
      this.showError('Error creating scatter chart: ' + error.message);
    }
  }

  createRadarChart(container) {
    const data = this.parseData(this.getAttribute('data'));
    const options = this.parseOptions(this.getAttribute('options'));

    if (!this.validateChartData(data)) return;

    // Normalize input so radar receives numeric arrays and categories are set.
    // Accept these shapes:
    // - Single series object: {A:10,B:20} -> series: [{name:'Series 1', data: [10,20]}], categories: ['A','B']
    // - Multiple series array: [{name:'S1', data: {A:1,B:2}}, {name:'S2', data: {A:3,B:4}}]
    // - Existing array formats remain supported.
    let radarCategories = this.categories || [];
    let radarSeries = null;
    if (Array.isArray(data) && data.length > 0 && typeof data[0] === 'object' && data[0].name && data[0].data && typeof data[0].data === 'object' && !Array.isArray(data[0].data)) {
      // Multiple named series with object-shaped data
      // Derive categories from first series if not provided
      const firstKeys = Object.keys(data[0].data);
      if ((!radarCategories || radarCategories.length === 0) && firstKeys.length > 0) radarCategories = firstKeys.slice();
      radarSeries = data.map(s => ({
        name: s.name || 'Series',
        data: Array.isArray(s.data) ? s.data.slice() : Object.values(s.data)
      }));
    } else if (!Array.isArray(data) && data && typeof data === 'object') {
      // Single-series object form
      radarCategories = Object.keys(data);
      radarSeries = [{ name: this.getAttribute('title') || 'Series 1', data: Object.values(data) }];
    } else {
      // Fallback to existing formatter for arrays/other forms
      radarSeries = this.formatSeries(data, 'radar');
    }

    const series = radarSeries;
    //const showLegend = (this.getAttribute('show-legend') !== 'false') && (series.length > 1);
    //const legendPosition = this.getAttribute('legend-position') || 'bottom';
    //const showToolbar = this.getAttribute('show-toolbar') !== 'false';
    //const title = this.getAttribute('title') || '';
    const showDataLabels = this.showDataLabels;
    const categories = radarCategories || [];

    // Realtime mode adjustments
    let finalShowDataLabels = showDataLabels;
    if (this.getAttribute('realtime') === 'true') {
      finalShowDataLabels = false;
    }

    /*const legendOptions = {
      show: showLegend,
      position: legendPosition,
      horizontalAlign: 'center',
      verticalAlign: legendPosition === 'top' ? 'top' : 'bottom',
      floating: false,
      offsetX: 0,
      offsetY: 0,
      labels: {
        colors: '#333',
        useSeriesColors: false
      },
      formatter: function(seriesName, opts) {
        return seriesName || 'Series';
      }
    };*/

    // Base defaults for radar (use base defaults and merge)
    let defaultOptions = {
      ...this.getBaseDefaultOptions('radar'),
      chart: {
        ...this.getBaseDefaultOptions('radar').chart,
        type: 'radar',
        //height: parseInt(this.getAttribute('height')) || 350,
        //toolbar: { show: showToolbar }
      },
      /*title: {
        text: title,
        align: 'left',
        style: { fontSize: '16px', color: '#333' }
      },*/
      dropShadow: {
        enabled: true,
        blur: 1,
        left: 1,
        top: 1
      },
      fill: {
        opacity: 0.1
      },
      //legend: legendOptions,
      //dataLabels: { enabled: finalShowDataLabels },
      //markers: { size: this.markerSize },
      xaxis: { categories: categories },
      yaxis: { stepSize: 20 }
    };

    // Set grid visibility based on gridShow attribute
    defaultOptions.grid = defaultOptions.grid || {};
    if (this.gridShow === null) {
      defaultOptions.grid.show = false;
    } else {
      defaultOptions.grid.show = this.gridShow;
    }

    // Deep-merge user `options` into defaults so nested objects are preserved
    defaultOptions = this.deepMerge(defaultOptions, options || {});

    // Ensure user-provided `options.chart` cannot remove the required chart type.
    defaultOptions.chart = { ...(defaultOptions.chart || {}), ...(options && options.chart ? options.chart : {}), type: 'radar' };

    // If series include per-series colors, copy them into options.colors
    // unless the user explicitly provided options.colors.
    try {
      const seriesColors = Array.isArray(series) ? series.map(s => s && s.color).filter(Boolean) : [];
      if (seriesColors.length > 0 && (!defaultOptions.colors || defaultOptions.colors.length === 0)) {
        defaultOptions.colors = seriesColors;
        if (defaultOptions.legend && defaultOptions.legend.labels) {
          defaultOptions.legend.labels.useSeriesColors = true;
        }
      }
    } catch (e) {
      // ignore
    }

    
    try {
      try { this._applyAxisOutputFormats(defaultOptions); } catch (e) {}
      this.chart = new ApexCharts(container, {
        ...defaultOptions,
        series: series
      });
      this.chart.render();
      this._options = defaultOptions;
    } catch (error) {
      console.error('Error creating radar chart:', error);
      this.showError('Error creating radar chart: ' + error.message);
    }
  }

  createPolarAreaChart(container) {
    const data = this.parseData(this.getAttribute('data'));
    const options = this.parseOptions(this.getAttribute('options'));

    if (!this.validateChartData(data)) return;

    // Support both array and object-shaped inputs for polarArea.
    // If an object is provided (e.g. {A:10,B:20}), convert it to an
    // array of values and extract labels like pie/donut.
    let polarLabelsFromObj = null;
    let inputData = data;
    if (!Array.isArray(data) && data && typeof data === 'object') {
      polarLabelsFromObj = Object.keys(data);
      inputData = Object.values(data);
    }

    // Series values (pie-style)
    const series = this.formatPieSeries(inputData);
    // Determine labels. Prefer explicit `categories` attr, then object-derived labels,
    // then derive from array-shaped `inputData` payload, otherwise fall back to generic labels.
    let labels = [];
    const cats = this.categories;
    if (Array.isArray(cats) && cats.length > 0) {
      labels = cats.slice();
    } else if (polarLabelsFromObj && polarLabelsFromObj.length > 0) {
      labels = polarLabelsFromObj.slice();
    } else if (Array.isArray(inputData) && inputData.length > 0) {
      if (typeof inputData[0] === 'object' && inputData[0].name) {
        labels = inputData.map(item => item.name);
      } else if (Array.isArray(inputData[0]) && inputData[0].length >= 2) {
        labels = inputData.map(item => item[0]);
      } else {
        labels = series.map((v, i) => `Item ${i + 1}`);
      }
    } else {
      labels = series.map((v, i) => `Item ${i + 1}`);
    }

    // Ensure labels exactly match series length: trim or pad as needed.
    if (Array.isArray(series)) {
      if (labels.length > series.length) labels = labels.slice(0, series.length);
      while (labels.length < series.length) labels.push(`Item ${labels.length + 1}`);
    }

    // Reorder series/labels so display can be arranged by value (staggered appearance).
    // This sorts pairs by value descending so large/small values alternate visually.
    try {
      if (Array.isArray(series) && series.length > 1) {
        const pairs = series.map((v, i) => ({ value: v, label: labels[i] || `Item ${i+1}`, color: (Array.isArray(data) && typeof data[i] === 'object') ? data[i].color : null }));
        // sort descending by value
        pairs.sort((a, b) => b.value - a.value);
        // write back
        series = pairs.map(p => p.value);
        labels = pairs.map(p => p.label);
        // if no colors were provided via colorsAttr/options, prefer per-item colors in this new order
        const perItemColors = pairs.map(p => p.color).filter(Boolean);
        if (perItemColors.length > 0 && (!colorsFromAttr)) {
          // will be applied later into defaultOptions.colors
          // store temporarily on dataColors variable used below
          var _reorderedDataColors = perItemColors;
        }
      }
    } catch (e) {
      // non-fatal
    }

    // Parse optional `colors` attribute (JSON array) so consumers can pass
    // colors via: colors='["#FF4560","#00E396"]'
    let colorsFromAttr = null;
    const colorsAttr = this.getAttribute('colors');
    if (colorsAttr) {
      try {
        const parsed = JSON.parse(colorsAttr);
        if (Array.isArray(parsed) && parsed.length > 0) colorsFromAttr = parsed;
      } catch (err) {
        console.warn('Invalid colors attribute format:', colorsAttr);
      }
    }

    //const showLegend = this.getAttribute('show-legend') !== 'false';
    //const legendPosition = this.getAttribute('legend-position') || 'bottom';
    //const showToolbar = this.getAttribute('show-toolbar') !== 'false';
    //const title = this.getAttribute('title') || '';
    const showDataLabels = this.showDataLabels;

    /*const legendOptions = {
      show: showLegend,
      position: legendPosition,
      horizontalAlign: 'center',
      verticalAlign: legendPosition === 'top' ? 'top' : 'bottom',
      floating: false,
      offsetX: 0,
      offsetY: 0
    };*/

    let defaultOptions = {
      ...this.getBaseDefaultOptions('polarArea'),
      chart: {
        ...this.getBaseDefaultOptions('polarArea').chart,
        type: 'polarArea',
        //height: parseInt(this.getAttribute('height')) || 350,
        //toolbar: { show: showToolbar }
      },
      /*title: {
        text: title,
        align: 'left',
        style: {
          fontSize: '16px',
          color: '#333'
        }
      },*/
      series: series,
      labels: labels,
      //legend: legendOptions,
      //dataLabels: { enabled: !!showDataLabels },
      plotOptions: {
        polarArea: {
          rings: { strokeWidth: 1 }
        }
      }
    };

    // Deep-merge user options so nested objects are preserved
    defaultOptions = this.deepMerge(defaultOptions, options || {});

    // If a `colors` attribute was provided (JSON array), prefer it unless
    // explicit `options.colors` exists.
    if (colorsFromAttr && (!defaultOptions.colors || defaultOptions.colors.length === 0)) {
      defaultOptions.colors = colorsFromAttr;
    }

    // Ensure chart type is preserved
    defaultOptions.chart = { ...(defaultOptions.chart || {}), ...(options && options.chart ? options.chart : {}), type: 'polarArea' };

    // Allow per-item colors (object items with .color) like pie/donut
    if (Array.isArray(inputData) && inputData.length > 0 && typeof inputData[0] === 'object' && inputData[0].name) {
      const dataColors = inputData.map(item => item.color).filter(Boolean);
      // prefer explicit per-item colors from data objects, but if we reordered above
      // and produced _reorderedDataColors, prefer that order when no explicit colorsAttr/options exist.
      const finalDataColors = (typeof _reorderedDataColors !== 'undefined' && _reorderedDataColors.length > 0) ? _reorderedDataColors : dataColors;
      if (finalDataColors && finalDataColors.length > 0 && (!defaultOptions.colors || defaultOptions.colors.length === 0)) {
        defaultOptions.colors = finalDataColors;
      }
    }

    try {
      try { this._applyAxisOutputFormats(defaultOptions); } catch (e) {}
      this.chart = new ApexCharts(container, {
        ...defaultOptions,
        series: series
      });
      this.chart.render();
      this._options = defaultOptions;
    } catch (error) {
      console.error('Error creating polar area chart:', error);
      this.showError('Error creating polar area chart: ' + error.message);
    }
  }

  createRangeAreaChart(container) {
    // Range area is an area variant with [low, high] y values per point
    const data = this.parseData(this.getAttribute('data'));
    const options = this.parseOptions(this.getAttribute('options'));

    if (!this.validateChartData(data)) return;

    const series = this.formatAreaSeries(data);
    //const showLegend = (this.getAttribute('show-legend') !== 'false') && (series.length > 1);
    //const legendPosition = this.getAttribute('legend-position') || 'bottom';
    //const showToolbar = this.getAttribute('show-toolbar') !== 'false';
    //const title = this.getAttribute('title') || '';
    const showDataLabels = this.showDataLabels;
    //const xAxisTitle = this.getAttribute('x-axis-title') || '';
    //const yAxisTitle = this.getAttribute('y-axis-title') || '';
    //const curve = this.getAttribute('curve') || 'smooth';
    const categories = this.getAttribute('categories') || '[]';

    // Override data labels for realtime charts
    let finalShowDataLabels = showDataLabels;
    const isRealtime = this.getAttribute('realtime') === 'true';
    if (isRealtime) finalShowDataLabels = false;

    /*const legendOptions = {
      show: showLegend,
      position: legendPosition,
      horizontalAlign: 'center',
      verticalAlign: legendPosition === 'top' ? 'top' : 'bottom',
      floating: false,
      offsetX: 0,
      offsetY: 0,
      labels: { colors: '#333', useSeriesColors: false },
      formatter: function (seriesName, opts) { return seriesName || 'Series'; }
    };*/

    const defaultOptions = {
      ...this.getBaseDefaultOptions('area'),
      chart: {
        ...this.getBaseDefaultOptions('area').chart,
        type: 'rangeArea',
        //height: parseInt(this.getAttribute('height')) || 350,
        //toolbar: { show: showToolbar }
      },
      //title: { text: title, align: 'left', style: { fontSize: '16px', color: '#333' } },
      //legend: legendOptions,
      //dataLabels: { enabled: finalShowDataLabels },
      //stroke: { curve: curve, width: parseInt(this.getAttribute('line-width')) || 2 },
      //markers: { size: this.markerSize, strokeColors: '#fff', strokeWidth: 2 },
      ...options
    };

    // Preserve axis titles when user options override xaxis/yaxis
    if (options && options.xaxis) {
      defaultOptions.xaxis = { ...this.getBaseDefaultOptions('area').xaxis, ...options.xaxis };
    }
    if (options && options.yaxis) {
      defaultOptions.yaxis = { ...this.getBaseDefaultOptions('area').yaxis, ...options.yaxis };
    }

    // Apply axis titles
    //if (xAxisTitle) defaultOptions.xaxis = { ...(defaultOptions.xaxis || {}), title: { text: xAxisTitle, style: { fontSize: '14px', color: '#333' }, offsetY: parseInt(this.getAttribute('x-axis-offsety')) || 2 } };
    //if (yAxisTitle) defaultOptions.yaxis = { ...(defaultOptions.yaxis || {}), title: { text: yAxisTitle, style: { fontSize: '14px', color: '#333' } } };

    // Apply categories if provided
    if (categories) {
      try {
        const categoriesArray = JSON.parse(categories);
        defaultOptions.xaxis = { ...(defaultOptions.xaxis || {}), categories: categoriesArray };
      } catch (error) { console.warn('Invalid categories format:', categories); }
    }

    // Apply gradient if requested
    //if (this.getAttribute('gradient') !== 'false') defaultOptions.fill = { type: 'gradient' };

    try {
      try { this._applyAxisOutputFormats(defaultOptions); } catch (e) {}
      this.chart = new ApexCharts(container, { ...defaultOptions, series: series });
      this.chart.render();
      this._options = defaultOptions;
    } catch (error) {
      console.error('Error creating range area chart:', error);
      this.showError('Error creating range area chart: ' + error.message);
    }
  }

  
  updateChart() {
    // Recreate the chart based on current attributes. If a chart exists,
    // destroy it first; otherwise, just render a new instance.
    if (this.chart) {
      try {
        this.chart.destroy();
      } catch (error) {
        console.warn('Error destroying chart during update:', error);
      }
      this.chart = null;
    }
    // Clear any existing DOM nodes before rendering
    try { this.innerHTML = ''; } catch (e) { /* ignore */ }
    this.render();
  }

  parseData(dataAttr) {
    if (!dataAttr) return [{"data": []}];

    try {
      return JSON.parse(dataAttr);
    } catch (e) {
      console.warn('Invalid data format:', dataAttr);
      return [{"data": []}];
    }
  }

  parseOptions(optionsAttr) {
    if (!optionsAttr) return {};

    try {
      return JSON.parse(optionsAttr);
    } catch (e) {
      console.warn('Invalid options format:', optionsAttr);
      return {};
    }
  }

  mapChartType(type) {
    const typeMap = {
      'line': 'line',
      'area': 'area',
      'column': 'column',
      'bar': 'bar',  // Horizontal bars
      'pie': 'pie',
      'donut': 'donut',
      'radialBar': 'radialBar',
      'scatter': 'scatter',
      'bubble': 'bubble',
      'heatmap': 'heatmap',
      'treemap': 'treemap',
      'radar': 'radar',
      'polarArea': 'polarArea',
      'rangeBar': 'rangeBar',
      'rangeArea': 'rangeArea',
      'candlestick': 'candlestick',
      'boxPlot': 'boxPlot'
    };
    return typeMap[type] || 'line';
  }

  formatSeries(data, type) {
    const chartType = this.mapChartType(type);

    // Handle different data formats based on chart type
    if (Array.isArray(data)) {
      if (data.length > 0 && typeof data[0] === 'object' && data[0].name) {
        // Multiple series: preserve per-series color and dashed flags so charts like radar use provided colors
        return data.map(series => ({
          name: series.name,
          data: this.formatSingleSeries(series.data, chartType),
          color: series.color,
          dashed: series.dashed || false
        }));
      } else if (chartType === 'pie' || chartType === 'donut' || chartType === 'radialBar') {
        // Pie/Donut/Radial charts: [["Label", value], ["Label", value]] or [value, value, value]
        if (Array.isArray(data[0]) && data[0].length === 2) {
          // Data is [[label, value], [label, value]]
          return data.map(item => item[1]);
        } else {
          // Data is [value, value, value]
          return data;
        }
      } else {
        // Single series array: [[x, y], [x, y]] or [value, value]
        return [{
          name: 'Series 1',
          data: this.formatSingleSeries(data, chartType)
        }];
      }
    } else if (typeof data === 'object') {
      // Single series object: {"Jan": 100, "Feb": 120}
      return [{
        name: 'Series 1',
        data: this.formatSingleSeries(data, chartType)
      }];
    }

    return [];
  }

  // Utility: check plain object
  /**
   * Test whether a value is a plain JavaScript object (i.e., `Object`
   * constructor). Used by the deep merging helpers.
   * @private
   * @param {*} obj - Value to check
   * @returns {boolean} true if obj is a plain object
   */
  isPlainObject(obj) {
    return obj && typeof obj === 'object' && obj.constructor === Object;
  }

  // Deep merge source into target (returns a new object). Arrays are replaced.
  /**
   * Recursively merge `source` into `target`, preserving nested objects and
   * replacing arrays. Designed to keep defaults while allowing users to
   * provide partial nested `options` objects without clobbering defaults.
   * @private
   * @param {*} target - The base object to merge into
   * @param {*} source - The source object whose properties will be merged
   * @returns {*} New merged object
   */
  deepMerge(target, source) {
    if (!source) return target;
    if (Array.isArray(source)) return source.slice();
    const out = (Array.isArray(target) ? target.slice() : { ...target });
    Object.keys(source).forEach(key => {
      const srcVal = source[key];
      const tgtVal = out[key];
      if (this.isPlainObject(srcVal) && this.isPlainObject(tgtVal)) {
        out[key] = this.deepMerge(tgtVal, srcVal);
      } else {
        out[key] = srcVal;
      }
    });
    return out;
  }

  /**
   * Format a single series into ApexCharts-acceptable shapes. This method
   * supports arrays of numbers, arrays of [x,y] tuples, and object maps.
   * @private
   * @param {*} data - Single series data
   * @param {string} chartType - Chart type for contextual formatting
   * @returns {Array|Object} The normalized single-series data
   */
  formatSingleSeries(data, chartType) {
    if (Array.isArray(data)) {
      if (chartType === 'pie' || chartType === 'donut' || chartType === 'radialBar') {
        // For pie/donut/radial charts, just return the values
        return data.map(item => typeof item === 'number' ? item : item[1]);
      } else if (data.length > 0 && Array.isArray(data[0])) {
        // Array of [x, y] pairs
        return data.map(point => ({
          x: point[0],
          y: point[1]
        }));
      } else {
        // Simple array of values
        return data;
      }
    } else if (typeof data === 'object') {
      // Object with key-value pairs
      if (chartType === 'pie' || chartType === 'donut' || chartType === 'radialBar') {
        // For pie/donut/radial charts, return just the values
        return Object.values(data);
      } else {
        // For other charts, return array of {x, y} objects
        return Object.entries(data).map(([x, y]) => ({ x, y }));
      }
    }
    return [];
  }

  // Public API methods
  /**
   * Update the component's `data` attribute and trigger a chart update.
   * Use this method to programmatically supply new data (objects or arrays)
   * to the component. The value will be serialized to JSON and set as the
   * `data` attribute, which then triggers the component's update lifecycle.
   * @param {*} newData - New chart data (object, array or series array)
   */
  updateData(newData) {
    // Update via attribute, which triggers attributeChangedCallback
    // This ensures consistent behavior whether updating via API or DOM
    this.setAttribute('data', JSON.stringify(newData));
  }

  /**
   * Merge new options into the current options object and set the `options`
   * attribute to preserve the new configuration. This will update the
   * underlying chart via Apex's `updateOptions` on the next scheduled run.
   * @param {object} newOptions - Options to merge into existing options
   */
  updateOptions(newOptions) {
    const currentOptions = this.parseOptions(this.getAttribute('options'));
    const mergedOptions = this.deepMerge(currentOptions, newOptions);
    this.setAttribute('options', JSON.stringify(mergedOptions));
  }

  /**
   * Returns the underlying ApexCharts instance created by this component,
   * or `null` if no chart has been initialized.
   * @returns {ApexCharts|null}
   */
  getChart() {
    return this.chart;
  }

  // Internal helper: write attribute without triggering attributeChangedCallback
  /**
   * Mutate an attribute on the element without triggering the
   * attributeChangedCallback. This is used internally to reflect runtime
   * state as attributes when performing `refresh()`.
   * @private
   * @param {string} name - Attribute name
   * @param {*} value - Value to set (if undefined or null the attribute is removed)
   */
  _setAttributeInternal(name, value) {
    this._internalAttributeMutate = true;
    try {
      if (typeof value === 'undefined' || value === null) this.removeAttribute(name);
      else this.setAttribute(name, value);
    } finally {
      this._internalAttributeMutate = false;
    }
  }

  /**
   * Remove an attribute without invoking attribute change handlers.
   * @private
   * @param {string} name - Attribute to remove
   */
  _removeAttributeInternal(name) {
    this._internalAttributeMutate = true;
    try {
      this.removeAttribute(name);
    } finally {
      this._internalAttributeMutate = false;
    }
  }

  /**
   * Toggle the `loading` attribute on the element to display or hide the
   * built-in loading indicator.
   * @param {boolean|string} loading - truthy to show loading, falsy to hide
   */
  setLoading(loading) {
    if (loading) {
      this.setAttribute('loading', '');
    } else {
      this.removeAttribute('loading');
    }
  }

  // Event handling
  /**
   * Override `addEventListener` only to expose the same API as DOM nodes.
   * This allows code calling `chart.addEventListener('click', handler)` to
   * attach events normally to the custom element.
   * @param {string} type - Event type
   * @param {Function} listener - Handler function
   * @param {object|boolean} [options] - Optional event listener options
   */
  addEventListener(type, listener, options) {
    super.addEventListener(type, listener, options);
  }

  /**
   * Clear the chart's data and runtime memory.
   * Destroy the ApexCharts instance and remove `data`, `categories` and
   * `colors` attributes. The internal state is cleared; call `refresh()` to
   * rebuild if needed.
   */
  clear() {
    if (this.chart) {
      // Destroy the current chart entirely
      try {
        this.chart.destroy();
      } catch (e) {
        // ignore destroy errors
      }
      this.chart = null;

      // Removing the chart instance means we need to rebuild it below via `render()`.
    }

    // Clear internal runtime memory and attributes so the chart is empty
    this._data = null;
    try { this._seriesMap.clear(); } catch (e) {}
    this._categories = [];
    this._colors = [];
    try { this._removeAttributeInternal('data'); } catch (e) {}
    try { this._removeAttributeInternal('categories'); } catch (e) {}
    try { this._removeAttributeInternal('colors'); } catch (e) {}

    // Rebuild the chart UI from attributes/ defaults by recreating the element's contents
    try {
      this.innerHTML = ''; // ensure container removed, leave chart destroyed and DOM empty
      // Do not re-render the chart or call refresh() automatically; caller must opt-in to rebuild.
    } catch (e) {
      console.warn('Error clearing chart during clear():', e);
    }
  }

  /**
   * Add or replace a series in the runtime series store. This does not
   * automatically refresh the chart; call `refresh()` after multiple
   * modifications if you want to re-render.
   * @param {string} seriesName - Human-friendly series label
   * @param {string|null} seriesColor - Optional color for this series
   * @param {Array|number|object} values - Series data payload
   */
  // Add series to memory for runtime management
  addSeries(seriesName, seriesColor, values) {
    const existing = this._seriesMap.get(seriesName) || {};
    const series = {
      name: seriesName,
      data: values,
      color: seriesColor || existing.color || null,
      dashed: typeof existing.dashed !== 'undefined' ? existing.dashed : false
    };
    this._seriesMap.set(seriesName, series);
  }

  // Add a single point (XY or numeric) to a given series; does not auto-refresh
  // Usage examples:
  //  - AddSeriesPoint('Series 1', [x,y])
  //  - AddSeriesPoint('Series 1', {x: x, y: y})
  //  - AddSeriesPoint('Series 1', y)  // numeric append for array series
  /**
   * Add a single point to a named series without refreshing rendering.
   * Supports values like `42`, `[x,y]`, or `{x: x, y: y}`.
   * @param {string} seriesName - Target series name
   * @param {*} a - Value, tuple or object representing the point
   * @param {*} [b] - Optional y coordinate if `a` is x and `b` is y
   */
  addSeriesPoint(seriesName, a, b) {
    // Normalize the incoming point to a proper data element
    let point = null;
    if (typeof a === 'object' && a !== null) {
      // array [x,y] or object {x,y}
      if (Array.isArray(a) && a.length >= 2) point = { x: a[0], y: a[1] };
      else if (typeof a.x !== 'undefined' || typeof a.y !== 'undefined') point = { x: a.x, y: a.y };
      else point = a;
} else if (typeof b !== 'undefined') {
      point = { x: a, y: b };
    } else {
      // assume single numeric value (pie/donut or array datapoint)
      point = a;
    }

    // Ensure series exists; if not, create with initial empty array
    if (!this._seriesMap.has(seriesName)) {
      const s = { name: seriesName, data: [], color: null };
      this._seriesMap.set(seriesName, s);
    }

    const series = this._seriesMap.get(seriesName);
    // If series.data isn't an array, convert it into an array
    if (!Array.isArray(series.data)) {
      // If it was a single scalar value, convert into [value]
      if (typeof series.data !== 'undefined' && series.data !== null) series.data = [series.data];
      else series.data = [];
    }

    // Push the new point
    series.data.push(point);
    this._seriesMap.set(seriesName, series);
  }

  // Append a numeric value to an existing series (for column/line charts)
  /**
   * Append a numeric value to the end of a given series. Creates the
   * series if it does not already exist.
   * @param {string} seriesName - Name of series to append to
   * @param {number} value - Numeric value to append
   */
  addSeriesAppendValue(seriesName, value) {
    if (!this._seriesMap.has(seriesName)) {
      this._seriesMap.set(seriesName, { name: seriesName, data: [value], color: null, dashed: false });
      return;
    }
    const series = this._seriesMap.get(seriesName);
    if (!Array.isArray(series.data)) series.data = [series.data];
    series.data.push(value);
    this._seriesMap.set(seriesName, series);
  }

  // Add series with a color
  /**
   * Add or update a series entry to store a color for that series.
   * Use `refresh()` afterwards to apply color values to the chart.
   * @param {string} seriesName - Name of the series
   * @param {string} seriesColor - Color CSS string
   */
  addSeriesColor(seriesName, seriesColor) {
    const existing = this._seriesMap.get(seriesName) || {};
    const series = {
      name: seriesName,
      data: existing.data || [],
      color: seriesColor,
      dashed: typeof existing.dashed !== 'undefined' ? existing.dashed : false
    };
    this._seriesMap.set(seriesName, series);
  }

  // B4X AddCategory (append a single category and grow series data arrays)
  /**
   * Append a category label and ensure all series arrays are padded to match
   * the new categories length.
   * @param {string} catName - Name of the category to append
   */
  addCategory(catName) {
    // Append category to our runtime categories
    this._categories.push(catName);
    // Ensure all series with array data are expanded to match new category
    for (const [name, s] of this._seriesMap) {
      if (!Array.isArray(s.data)) s.data = [s.data || ''];
      // If series arrays are too short, push placeholder
      while (s.data.length < this._categories.length) s.data.push('');
      this._seriesMap.set(name, s);
    }
  }

  // B4X AddColor (append a single color to runtime colors)
  /**
   * Add a single color to the runtime palette. Use `refresh()` to apply the
   * runtime palette into `options.colors`.
   * @param {string} col - Color string (e.g. `#FF4560`)
   */
  addColor(col) {
    if (typeof col !== 'undefined' && col !== null) this._colors.push(col);
  }

  // Add series value to memory (B4X compatible method)
  /**
   * Add or replace a series entry with full data payload in runtime memory.
   * If existing, the series data will be replaced with `value`.
   * @param {string} SeriesName - Name of the series
   * @param {Array|number|object} value - New series data
   */
  addSeriesValue(SeriesName, value) {
    const existing = this._seriesMap.get(SeriesName) || {};
    const series = {
      name: SeriesName,
      data: value,
      color: existing.color || null,
      dashed: typeof existing.dashed !== 'undefined' ? existing.dashed : false
    };
    this._seriesMap.set(SeriesName, series);
  }

  // Add XY series (B4X compatible method)
  /**
   * Convenience wrapper for the legacy `AddXY` B4X API. Adds a value to the
   * runtime store for series `X`.
   * @param {string} X - Series name
   * @param {*} y - Series data or value
   */
  addXY(X, y) {
    this.addSeriesValue(X, y);
  }

  // Set series color (B4X compatible method)
  /**
   * Set the series color in runtime memory (B4X compatible wrapper).
   * @param {string} seriesName - Series name
   * @param {string} color - Color string
   */
  SetSeriesColor(seriesName, color) {
    if (this._seriesMap.has(seriesName)) {
      const series = this._seriesMap.get(seriesName);
      series.color = color;
      this._seriesMap.set(seriesName, series);
    }
  }

  // Set series dashed flag (B4X compatible method)
  /**
   * Set the 'dashed' flag for a series (legacy B4X API).
   * @param {string} seriesName - Series name
   * @param {boolean|string} dashed - Boolean or string; `true` flips on dashed styling
   */
  SetSeriesDashed(seriesName, dashed) {
    const dashedFlag = (dashed === true || dashed === 'true');
    if (!this._seriesMap.has(seriesName)) {
      // create series entry so runtime dash can be applied even if series missing yet
      this._seriesMap.set(seriesName, { name: seriesName, data: [], color: null, dashed: dashedFlag });
      return;
    }
    const series = this._seriesMap.get(seriesName);
    series.dashed = dashedFlag;
    this._seriesMap.set(seriesName, series);
  }

  // Add series category value matrix (B4X compatible method)
  /**
   * Set a single data point for a given series by category name. This
   * method ensures the series and categories exist then writes the value
   * at the matching index.
   * @param {string} seriesName - Target series name
   * @param {string} catName - Category label to index into
   * @param {*} value - Value to set at the category position
   */
  addSeriesCategoryValue(seriesName, catName, value) {
    let seriesValues = [];
    
    // The series does not exist, create it
    if (!this._seriesMap.has(seriesName)) {
      seriesValues = [];
      // Initialize with empty strings for all categories
      for (let i = 0; i < this._categories.length; i++) {
        seriesValues.push("");
      }
      const series = {
        name: seriesName,
        data: seriesValues
      };
      this._seriesMap.set(seriesName, series);
    }
    
    // Get the series data
    const series = this._seriesMap.get(seriesName);
    seriesValues = series.data;
    
    // What is the category position
    const catPos = this._categories.indexOf(catName);
    if (catPos !== -1) {
      // Update the category value at that position
      seriesValues[catPos] = value;
      series.data = seriesValues;
      // Save the latest series information back
      this._seriesMap.set(seriesName, series);
    }
  }

  

  // Consolidate runtime state into a payload used by refresh().
  // Returns an object containing runtimeSeriesObjects, dataAttr, categories, colors
  // and pie-specific values when chartType is circular.
  /**
   * Consolidate runtime memory (series, categories, colors) into a payload
   * usable by `refresh()` — the structure varies depending on chart type. For
   * pie/donut style charts it returns a flattened pie array; for others a
   * runtimeSeriesObjects with name/data/color/dashed is returned.
   * @private
   * @param {string} chartType - Optional chart type hint
   * @returns {object} Consolidated runtime state for the current type
   */
  _buildRuntimeState(chartType) {
    const chartTypeKey = this.mapChartType(chartType || this.getAttribute('type') || 'line');

    if (chartTypeKey === 'pie' || chartTypeKey === 'donut' || chartTypeKey === 'radialBar' || chartTypeKey === 'polarArea') {
      const runtimeSeriesObjects = Array.from(this._seriesMap.values()).map(series => ({
        name: series.name,
        data: Array.isArray(series.data) ? series.data[0] : series.data,
        color: series.color
      }));
      const pieSeries = runtimeSeriesObjects.map(s => s.data || 0);
      const pieLabels = runtimeSeriesObjects.map(s => s.name);
      const pieColors = runtimeSeriesObjects.map(s => s.color).filter(Boolean);
      const dataAttr = runtimeSeriesObjects.map(s => ({ name: s.name, data: s.data, color: s.color }));
      return { pieSeries, pieLabels, pieColors, dataAttr };
    }

    // Cartesian/other charts
    const runtimeSeriesObjects = Array.from(this._seriesMap.values()).map(series => {
      const data = Array.isArray(series.data) ? series.data.slice() : [series.data];
      return { name: series.name, data: data, color: series.color, dashed: !!series.dashed };
    });
    const dataAttr = runtimeSeriesObjects;
    const categories = Array.isArray(this._categories) ? this._categories.slice() : [];
    const colors = Array.isArray(this._colors) ? this._colors.slice() : [];
    return { runtimeSeriesObjects, dataAttr, categories, colors };
  }

  // Refresh chart with all stored series
  // By default this will recreate the chart to ensure parity with static attributes.
  // Pass `false` to perform an incremental update instead.
  /**
   * Refresh the chart using in-memory runtime state. This method consolidates
   * all runtime series/colors/categories and writes them back into the
   * `data`, `colors`, and `categories` attributes via `_setAttributeInternal`
   * to ensure `render()` reconstructs the ApexCharts instance.
   * @returns {void}
   */
  refresh() {
    try {
    const chartType = this.getAttribute('type') || 'line';

    // Consolidate runtime state for this chart type first
    const state = this._buildRuntimeState(chartType);

    // Apply attributes from runtime state so `render()` uses them
    try {
      if (state.dataAttr && state.dataAttr.length > 0) this._setAttributeInternal('data', JSON.stringify(state.dataAttr));
      else this._removeAttributeInternal('data');
      } catch(e) {}
    try {
      if (state.categories && state.categories.length > 0) this._setAttributeInternal('categories', JSON.stringify(state.categories));
        else this._removeAttributeInternal('categories');
      } catch(e) {}
    try {
      const runtimeSeriesColors = state.runtimeSeriesObjects ? state.runtimeSeriesObjects.map(s => s && s.color).filter(Boolean) : [];
      const paletteColors = state.colors && state.colors.length > 0 ? state.colors : [];
      const applyColors = runtimeSeriesColors.length > 0 ? runtimeSeriesColors : paletteColors;
      if (applyColors && applyColors.length > 0) this._setAttributeInternal('colors', JSON.stringify(applyColors));
        else this._removeAttributeInternal('colors');
      } catch(e) {}

      // Recreate chart to ensure full parity with attributes + merged defaults
      this.updateChart();
      return;
    } catch (err) {
      console.error('Error during chart refresh:', err.message || err, err.stack || 'no stack');
    }
  }

  // Add multiple categories to memory
  /**
   * Add multiple categories to runtime categories array and ensure internal
   * state is updated. Does not call `refresh()` automatically.
   * @param {Array<string>} cats - Array of category labels to append
   */
  addCategories(cats) {
    if (Array.isArray(cats)) {
      this._categories.push(...cats);
    }
  }

  // Add colors for series (B4X compatible method)
  /**
   * Append a set of colors to the runtime palette without applying them to
   * the chart — call `refresh()` to persist them to `options.colors`.
   * @param {Array<string>} cols - Array of color strings
   */
  addColors(cols) {
    if (Array.isArray(cols)) {
      this._colors.push(...cols);
    }
  }
}

// Add default styles for the apex-chart component
const styleId = 'sithaso-apex-default-styles';
if (!document.getElementById(styleId)) {
  const style = document.createElement('style');
  style.id = styleId;
  style.textContent = `
    sithaso-apex {
      display: block;
      width: 100%;
      max-width: 100%;
      overflow: hidden;
    }
  `;
  document.head.appendChild(style);
}

customElements.define('sithaso-apex', SithasoApex);
