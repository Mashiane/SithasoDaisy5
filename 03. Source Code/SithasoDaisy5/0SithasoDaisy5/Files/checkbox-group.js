/**
 * A custom web component for managing a group of checkboxes or radio buttons.
 * Allows dynamic rendering, selection, and event handling for grouped inputs.
 */
class CheckboxGroup extends HTMLElement {
    /**
   * Called when the component is added to the DOM.
   * Sets up event listeners and renders the component.
   */
  constructor() {
    super();
    this._options = {}; // Initialize options as an empty Map
  }

  static get observedAttributes() {
    return [
      'id',
      'color',
      'legend-label',
      'active-color',
      'active-border-color',
      'columns',
      'shadow',
      'background-color',
      'rounded',
      'rounded-box',
      'type-of',
      'width',
      'height',
      'border',
      'border-color',
      'class',
      'style',	
    ];
  }

  toggleCheckBox(key) {
    // Toggle the checked state of a checkbox by its key
    const checkbox = this.querySelector(`#${key}_chk`);
    if (checkbox) checkbox.checked = !checkbox.checked;
  }

  toggleState(key, state) {
    // Find the checkbox by its key and change its state based on provided value
    const checkbox = this.querySelector(`#${key}_chk`);
    if (checkbox) checkbox.checked = state;
  }

  connectedCallback() {
    this.render(); // Call the render method when the element is connected
    
    // Observe attribute changes
    const observer = new MutationObserver(() => this.render());
    observer.observe(this, { attributes: true });
    this._observer = observer;

    // Event delegation for change events on inputs
    this.addEventListener('change', (event) => {
        const typeOf = this.getAttribute('type-of') || 'checkbox'; // Default to 'checkbox'

        if (typeOf === 'radio' && event.target && event.target.type === 'radio') {
        /**
         * Dispatches a custom 'change' event for radio buttons.
         * The event detail contains the selected radio button's value.
         */
            this.dispatchEvent(new CustomEvent('change', {
                detail: this.getChecked()
            }));
        } else if (typeOf !== 'radio' && event.target && event.target.type === 'checkbox') {
            // For checkboxes, dispatch the change event with all checked values
            this.dispatchEvent(new CustomEvent('change', {
                detail: this.getChecked() // Pass the checked values as event detail
            }));
        }
    });
  }

  clearChecked() {
    const typeOf = this.getAttribute('type-of') || 'checkbox'; // Default to 'checkbox'

    if (typeOf === 'radio') {
        // Uncheck the currently selected radio button
        const selectedRadio = this.querySelector('input[type="radio"]:checked');
        if (selectedRadio) {
            selectedRadio.checked = false;
        }
    } else {
        // Uncheck all checkboxes in the component
        this.querySelectorAll('input[type="checkbox"]').forEach((checkbox) => {
            checkbox.checked = false;
        });
    }
  }

  attributeChangedCallback(name, oldValue, newValue) {
    if (oldValue !== newValue) {
      this.render(); // Re-render the component when an observed attribute changes
    }
  }

  disconnectedCallback() {
    if (this._observer) {
      this._observer.disconnect();
    }
  }

  setOptions(value) {
    this._options = value;
    this.render(); // Re-render when options are updated
  }

  /**
 * Sets the options from a multi-delimited string.
 * Each item in the string is separated by a semicolon (;), and each key-value pair is separated by a colon (:).
 * Example: "key1:value1;key2:value2"
 */
setOptionsMV(value) {
  if (typeof value !== 'string') {
    return;
  }

  // Split the string by semicolon to get individual key-value pairs
  const pairs = value.split(';').map((pair) => pair.trim()).filter((pair) => pair !== '');

  // Create a new Map to store the options
  const options = {};

  // Process each pair and split by colon to extract key and value
  pairs.forEach((pair) => {
    const [key, val] = pair.split(':').map((item) => item.trim());
    if (key && val) {
      options[key] = val;
    }
  });

  // Set the options using the existing setter
  this.setOptions(options);
}

  getChecked() {
    const typeOf = this.getAttribute('type-of') || 'checkbox'; // Default to 'checkbox'

    if (typeOf === 'radio') {
        // For radio buttons, return the value of the selected radio button
        const selectedRadio = this.querySelector('input[type="radio"]:checked');
        return selectedRadio ? [selectedRadio.value] : [];
    } else {
        // For checkboxes, return the values of all checked checkboxes
        const checkedValues = [];
        this.querySelectorAll('input[type="checkbox"]:checked').forEach((checkbox) => {
            checkedValues.push(checkbox.value);
        });
        return checkedValues;
    }
  }

  setChecked(values) {
    if (!Array.isArray(values)) {
      return;
    }

    const typeOf = this.getAttribute('type-of') || 'checkbox'; // Default to 'checkbox'

    if (typeOf === 'radio') {
      // For radio buttons, only the first value in the array will be checked
      const valueToCheck = values[0]; // Only one radio button can be checked
      const radio = this.querySelector(`input[type="radio"][value="${valueToCheck}"]`);
      if (radio) {
        radio.checked = true;
      }
    } else {
      // For checkboxes and toggles, check the specified values and uncheck others
      this.querySelectorAll('input[type="checkbox"]').forEach((checkbox) => {
        checkbox.checked = values.includes(checkbox.value);
      });
    }
  }

  setCheckedMV(value) {
    if (typeof value !== 'string') {
      return;
    }

    const valuesArray = value.split(';').map((v) => v.trim()).filter((v) => v !== '');
    this.setChecked(valuesArray);
  }

  getCheckedMV() {
    // Call getChecked and join the array into a string delimited by ";"
    const checkedValues = this.getChecked();
    return checkedValues.join(';');
  }

  areKeysChecked(keys) {
    if (!Array.isArray(keys)) {
      return false;
    }

    // Check if all keys in the array are checked
    return keys.every((key) => {
      const checkbox = this.querySelector(`#${key}_chk`);
      return checkbox ? checkbox.checked : false;
    });
  }

  fixColor(prefix, suffix) {
    // Treat null or undefined as blank
    prefix = prefix == null ? '' : String(prefix);
    suffix = suffix == null ? '' : String(suffix);

    if (!prefix || !suffix) {
        return '';
    }

    if (suffix.startsWith('#')) {
        suffix = `[${suffix}]`;
    }

    if (prefix === 'btn' || prefix === 'badge') {
        prefix = 'bg';
    }

    const result = `${prefix}-${suffix}`;
    if (result.endsWith('-')) {
        return '';
    }
    return result;
  }

  render() {
    const id = this.getAttribute('id') || '';
    const legendLabel = this.getAttribute('legend-label') || ''; // Default to an empty string
    const activeColor = this.fixColor('checked:bg', this.getAttribute('active-color')); // Use fixColor to construct the class
    const activeBorderColor = this.fixColor('checked:border', this.getAttribute('active-border-color')); // Use fixColor to construct the class
    const typeOf = this.getAttribute('type-of') || 'checkbox'; // Default to 'checkbox'
    const size = this.getAttribute('size') || 'md'; // Default to 'md'
    const color = this.getAttribute('color') || 'primary'; // Default to 'default'
    const inputType = typeOf === 'radio' ? 'radio' : 'checkbox'; // Determine input type
    const inputClass = typeOf === 'radio' ? 'radio' : typeOf === 'toggle' ? 'toggle' : 'checkbox'; // Determine input class
    const sizeClass = `${inputClass}-${size}`; // Add size class dynamically
    const colorClass = `${inputClass}-${color}`; // Add color class dynamically
    const columns = parseInt(this.getAttribute('columns')) || 1; // Default to 3 columns
    const shadow = this.getAttribute('shadow') ? `shadow-${this.getAttribute('shadow')}` : '';
    const backgroundColor = this.fixColor('bg', this.getAttribute('background-color'));
    const rounded = this.getAttribute('rounded') ? `rounded-${this.getAttribute('rounded')}` : '';
    const roundedBoxClass = this.hasAttribute('rounded-box') ? 'rounded-box' : ''; // Add rounded-box if attribute exists
    const width = this.getAttribute('width') ? `${this.getAttribute('width')}` : ''; // Add width class dynamically
    const height = this.getAttribute('height') ? `${this.getAttribute('height')}` : ''; // Add height class dynamically
    const border = this.hasAttribute('border'); // Check if the border attribute is present
    const borderColor = border ? this.fixColor('border', this.getAttribute('border-color')) : ''; // Apply fixColor if border is true
    const customClass = this.getAttribute('class') || ''; // Get the class attribute
    const customStyle = this.getAttribute('style') || ''; // Get the style attribute

    // Render the component's HTML directly into the light DOM
    this.innerHTML = `
      <fieldset id="${id}" class="fieldset grid grid-cols-${columns} gap-4 ${shadow} ${backgroundColor} ${rounded} ${roundedBoxClass} ${width} ${height} ${borderColor} ${customClass} p-4" style="${customStyle}">
        <legend id="${id}_legend" class="fieldset-legend">${legendLabel}</legend>
        ${Object.entries(this._options)
          .map(
            ([key, value]) => `
            <label id="${key}_label" class="flex cursor-pointer items-center gap-2">
              <input type="${inputType}" name="${id}" value="${key}" id="${key}_chk" class="${inputClass} ${sizeClass} ${colorClass} ${activeColor} ${activeBorderColor}" />
              <span id="${key}_text">${value}</span>
            </label>`
          )
          .join('')}
      </fieldset>
    `;
  }

  addOption(key, value) {
    // Convert key to string and lowercase, even if null or undefined
    key = String(key || '').toLowerCase();

    // Exit if the key is blank
    if (!key.trim()) {
      return;
    }

    // Check if the key already exists in the options map
    if (this._options[key]) {
      return;
    }

    // Add the new option to the options map
    this._options[key] = value;

    // Create the new checkbox or radio button HTML
    const activeColor = this.fixColor('checked:bg', this.getAttribute('active-color'));
    const activeBorderColor = this.fixColor('checked:border', this.getAttribute('active-border-color'));
    const typeOf = this.getAttribute('type-of') || 'checkbox'; // Default to 'checkbox'
    const size = this.getAttribute('size') || 'md'; // Default to 'md'
    const color = this.getAttribute('color') || ''; // Default to 'default'
    const inputType = typeOf === 'radio' ? 'radio' : 'checkbox'; // Determine input type
    const inputClass = typeOf === 'radio' ? 'radio' : typeOf === 'toggle' ? 'toggle' : 'checkbox'; // Determine input class
    const sizeClass = `${inputClass}-${size}`; // Add size class dynamically
    const colorClass = `${inputClass}-${color}`; // Add color class dynamically
    const id = this.getAttribute('id') || ''; // Add id dynamically
    const newCheckboxHTML = `
      <label id="${key}_label" class="flex cursor-pointer items-center gap-2">
        <input type="${inputType}" name="${id}" value="${key}" id="${key}_chk" class="${inputClass} ${sizeClass} ${colorClass} ${activeColor} ${activeBorderColor}" />
        <span id="${key}_text">${value}</span>
      </label>
    `;

    // Append the new checkbox or radio button to the fieldset
    const fieldset = this.querySelector('fieldset');
    if (fieldset) {
      fieldset.insertAdjacentHTML('beforeend', newCheckboxHTML);
    }
  }
}

customElements.define('checkbox-group', CheckboxGroup);