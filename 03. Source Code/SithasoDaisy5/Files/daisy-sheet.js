// Complete DaisySheetModal component
class DaisySheetModal extends HTMLElement {
    static get observedAttributes() {
        return ["open", "initial-breakpoint", "breakpoints", "background-color", "width", "max-width", "showbackdrop", "backdropdismiss", "backdrop-color", "duration", "handle-bg", "handle-shadow"];
    }

    constructor() {
        super();
        this._onDrag = this._onDrag.bind(this);
        this._onDragMove = this._onDragMove.bind(this);
        this._onDragEnd = this._onDragEnd.bind(this);
        this._breakpoints = [0, 0.1, 0.2, 0.3, 0.4, 0.5, 0.7, 0.8, 1];
        this._currentBreakpoint = 0.5;
        this._dragStartY = null;
        this._dragStartHeight = null;
    }

    connectedCallback() {
        if (!this._structureInitialized) {
            this._renderStructure();
            this._structureInitialized = true;
        }
        this._cacheElements();
        this._applyDynamicStyles();
        this._attachEvents();
        this._attachBackdropEvents();
        this._attachEscListener();
    }

    disconnectedCallback() {
        if (this._escListener) {
            document.removeEventListener('keydown', this._escListener);
            this._escListener = null;
        }
        if (this._handle) {
            this._handle.removeEventListener('mousedown', this._onDrag);
            this._handle.removeEventListener('touchstart', this._onDrag);
        }
        document.removeEventListener('mousemove', this._onDragMove);
        document.removeEventListener('mouseup', this._onDragEnd);
        document.removeEventListener('touchmove', this._onDragMove);
        document.removeEventListener('touchend', this._onDragEnd);
        if (this._backdrop) this._backdrop.onclick = null;
    }

    attributeChangedCallback(name, oldValue, newValue) {
        if (oldValue !== newValue) {
            if (name === "breakpoints") this._breakpoints = this._parseBreakpoints(newValue);
            if (name === "initial-breakpoint") this._currentBreakpoint = parseFloat(newValue) || 1;
            if (["background-color", "width", "max-width", "duration", "handle-bg", "handle-shadow", "backdrop-color", "open", "showbackdrop", "backdropdismiss"].includes(name)) {
                this._applyDynamicStyles();
            }
        }
        if (name === "open") this._toggleBackdrop();
    }

    get open() { return this.hasAttribute("open"); }
    set open(val) { if (val) this.setAttribute("open", ""); else this.removeAttribute("open"); }

    get initialBreakpoint() { return parseFloat(this.getAttribute("initial-breakpoint")) || 0.5; }
    set initialBreakpoint(val) { this.setAttribute("initial-breakpoint", val); this._currentBreakpoint = parseFloat(val) || 0.5; }

    get breakpoints() { return this._breakpoints; }
    set breakpoints(val) { this.setAttribute("breakpoints", Array.isArray(val) ? val.join(",") : val); this._breakpoints = this._parseBreakpoints(this.getAttribute("breakpoints")); }

    get backgroundColor() { return this.getAttribute("background-color") || "bg-base-200"; }
    set backgroundColor(val) { this.setAttribute("background-color", val); }

    get sheetWidth() { return this.getAttribute("width") || "100%"; }
    set sheetWidth(val) { this.setAttribute("width", val); }

    get sheetMaxWidth() { return this.getAttribute("max-width") || "90%"; }
    set sheetMaxWidth(val) { this.setAttribute("max-width", val); }

    get showBackdrop() { return this.hasAttribute("showbackdrop"); }
    set showBackdrop(val) { if (val) this.setAttribute("showbackdrop", ""); else this.removeAttribute("showbackdrop"); }

    get backdropDismiss() { return this.hasAttribute("backdropdismiss"); }
    set backdropDismiss(val) { if (val) this.setAttribute("backdropdismiss", ""); else this.removeAttribute("backdropdismiss"); }

    get backdropColor() { return this.getAttribute("backdrop-color") || "rgba(0, 0, 0, 0.32)"; }
    set backdropColor(val) { this.setAttribute("backdrop-color", val); }

    get duration() { return this.getAttribute("duration") || "300"; }
    set duration(val) { this.setAttribute("duration", val); }

    get handleBg() { return this.getAttribute("handle-bg") || "bg-base-300"; }
    set handleBg(val) { this.setAttribute("handle-bg", val); }

    get handleShadow() { return this.getAttribute("handle-shadow") || "shadow-md"; }
    set handleShadow(val) { this.setAttribute("handle-shadow", val); }

    set handleVisible(val) {
        if (!this._handleHost) this._handleHost = this.querySelector(`#${this.id}shost`);
        if (this._handleHost) val ? this._handleHost.classList.remove('hidden') : this._handleHost.classList.add('hidden');
    }
    get handleVisible() {
        if (!this._handleHost) this._handleHost = this.querySelector(`#${this.id}shost`);
        return this._handleHost ? !this._handleHost.classList.contains('hidden') : true;
    }

    _parseBreakpoints(val) { return val ? val.split(",").map(v => parseFloat(v.trim())).filter(v => v > 0 && v <= 1) : [0, 0.5, 1]; }

    _renderStructure() {
        const id = this.id;
        if (this._structureInitialized) return;
        this._structureInitialized = true;

        const backdrop = document.createElement('div');
        backdrop.id = `${id}bc`;
        backdrop.className = 'daisy-sheet-backdrop fixed inset-0 z-999 opacity-0 pointer-events-none transition-opacity duration-300';

        const modal = document.createElement('div');
        modal.id = `${id}modal`;
        modal.className = 'daisy-sheet-modal fixed left-1/2 right-auto bottom-0 z-1000 rounded-t-3xl shadow-2xl mx-auto flex flex-col';

        const handleHost = document.createElement('div');
        handleHost.id = `${id}shost`;
        handleHost.className = 'flex flex-col items-center pt-3 pb-2 select-none';

        const handle = document.createElement('div');
        handle.id = `${id}sh`;
        handle.className = 'daisy-sheet-handle w-12 h-1.5 rounded-full mb-3 opacity-70 cursor-pointer transition-colors duration-200 hover:bg-base-400';

        handleHost.appendChild(handle);

        const content = document.createElement('div');
        content.id = `${id}content`;
        content.className = 'px-6 pb-6 flex-1 overflow-auto';

        modal.appendChild(handleHost);
        modal.appendChild(content);

        const style = document.createElement('style');
        style.textContent = `.daisy-sheet-modal { will-change: transform, height; backdrop-filter: blur(8px); } .daisy-sheet-handle { box-shadow: 0 1px 4px 0 rgba(0,0,0,0.08); } .daisy-sheet-backdrop { will-change: opacity; }`;

        this.appendChild(backdrop);
        this.appendChild(modal);
        this.appendChild(style);
    }

    _cacheElements() {
        this._modal = this.querySelector(`#${this.id}modal`);
        this._handle = this.querySelector(`#${this.id}sh`);
        this._handleHost = this.querySelector(`#${this.id}shost`);
        this._backdrop = this.querySelector(`#${this.id}bc`);
    }

    _applyDynamicStyles() {
        if (!this._modal) return;
        const vh = window.innerHeight;
        const height = this.open ? `${this._currentBreakpoint * 100}vh` : '0';
        const width = this.sheetWidth;
        const maxWidth = this.sheetMaxWidth;
        const duration = this.duration;

        const bg = this.backgroundColor;
        if (bg.startsWith('#') || bg.startsWith('rgb')) {
            this._modal.style.backgroundColor = bg;
            this._modal.className = this._modal.className.replace(/bg-[^\s]+/g, '').trim();
        } else {
            this._modal.style.backgroundColor = '';
            if (!this._modal.classList.contains(bg)) this._modal.classList.add(bg);
        }

        this._modal.style.left = '0%';
        this._modal.style.transform = this.open ? 'translate(0%, 0%)' : 'translate(0, 100%)';
        this._modal.style.maxWidth = maxWidth;
        this._modal.style.width = width;
        this._modal.style.height = height;
        this._modal.style.transition = `transform ${duration}ms cubic-bezier(0.4,0,0.2,1), height 0.7s cubic-bezier(0.4,0,0.2,1)`;
        this._modal.style.boxShadow = '0 8px 32px 0 rgba(31, 38, 135, 0.37)';
        this._modal.style.borderTop = '1.5px solid rgba(255,255,255,0.18)';

        const handleBg = this.handleBg;
        if (handleBg.startsWith('#') || handleBg.startsWith('rgb')) {
            this._handle.style.backgroundColor = handleBg;
            this._handle.className = this._handle.className.replace(/bg-[^\s]+/g, '').trim();
        } else {
            this._handle.style.backgroundColor = '';
            if (!this._handle.classList.contains(handleBg)) this._handle.classList.add(handleBg);
        }

        const handleShadow = this.handleShadow;
        if (handleShadow && !this._handle.classList.contains(handleShadow)) this._handle.classList.add(handleShadow);

        if (this._backdrop) {
            this._backdrop.style.backgroundColor = this.backdropColor;
            this._backdrop.style.transition = `opacity ${duration}ms cubic-bezier(0.4,0,0.2,1)`;
        }

        this._toggleBackdrop();
    }

    _attachEvents() {
        const id = this.id;
        let handle = this.querySelector(`#${id}sh`);
        if (!handle) {
            const modal = this.querySelector(`#${id}modal`);
            if (modal) handle = modal.querySelector('.daisy-sheet-handle');
        }
        if (handle) {
            handle.removeEventListener('mousedown', this._onDrag);
            handle.addEventListener('mousedown', this._onDrag);
            handle.removeEventListener('touchstart', this._onDrag);
            handle.addEventListener('touchstart', this._onDrag);
        }
        document.removeEventListener('mousemove', this._onDragMove);
        document.removeEventListener('mouseup', this._onDragEnd);
        document.removeEventListener('touchmove', this._onDragMove);
        document.removeEventListener('touchend', this._onDragEnd);
    }

    _onDrag(e) {
        e.preventDefault();
        if (!this._modal) return;
        this._dragStartY = (e.touches ? e.touches[0].clientY : e.clientY);
        this._dragStartHeight = this._modal.getBoundingClientRect().height;
        document.addEventListener('mousemove', this._onDragMove, { passive: false });
        document.addEventListener('mouseup', this._onDragEnd, { passive: false });
        document.addEventListener('touchmove', this._onDragMove, { passive: false });
        document.addEventListener('touchend', this._onDragEnd, { passive: false });
        this._modal.classList.add('dragging');
    }

    _onDragMove(e) {
        if (!this._modal || this._dragStartY === null) return;
        const clientY = (e.touches && e.touches.length) ? e.touches[0].clientY : e.clientY;
        const deltaY = clientY - this._dragStartY;
        const vh = window.innerHeight;
        let newHeight = this._dragStartHeight - deltaY;
        const minHeight = Math.min(...this._breakpoints) * vh;
        const maxHeight = Math.max(...this._breakpoints) * vh;
        newHeight = Math.max(minHeight, Math.min(maxHeight, newHeight));
        this._modal.style.transition = 'none';
        this._modal.style.height = `${newHeight}px`;
        e.preventDefault();
    }

    _onDragEnd(e) {
        if (!this._modal || this._dragStartY === null) return;
        const clientY = (e.changedTouches && e.changedTouches.length) ? e.changedTouches[0].clientY : (e.clientY || this._dragStartY);
        const deltaY = clientY - this._dragStartY;
        const vh = window.innerHeight;
        let newHeight = this._dragStartHeight - deltaY;
        let newBreakpoint = newHeight / vh;
        let closest = this._breakpoints.reduce((prev, curr) => Math.abs(curr - newBreakpoint) < Math.abs(prev - newBreakpoint) ? curr : prev);
        this._currentBreakpoint = closest;
        this._modal.style.transition = '';
        this._modal.classList.remove('dragging');
        this._applyDynamicStyles();
        document.removeEventListener('mousemove', this._onDragMove);
        document.removeEventListener('mouseup', this._onDragEnd);
        document.removeEventListener('touchmove', this._onDragMove);
        document.removeEventListener('touchend', this._onDragEnd);
        this._dragStartY = null;
        this._dragStartHeight = null;
    }

    show(breakpoint) {
        if (breakpoint !== undefined) this._currentBreakpoint = parseFloat(breakpoint) || 0.5;
        else this._currentBreakpoint = parseFloat(this.getAttribute("initial-breakpoint")) || 0.5;
        this.open = true;
        this._applyDynamicStyles();
    }

    hide() {
        if (this._modal) {
            const duration = parseInt(this.duration, 10) || 300;
            this._modal.style.transition = `transform ${duration}ms cubic-bezier(0.4,0,0.2,1), height 0.7s cubic-bezier(0.4,0,0.2,1)`;
            this._modal.style.transform = 'translate(0%, 100%)';
            setTimeout(() => { this.open = false; this._applyDynamicStyles(); }, duration);
        } else { this.open = false; this._applyDynamicStyles(); }
    }

    _toggleBackdrop() {
        const backdrop = this.querySelector(`#${this.id}bc`);
        if (!backdrop) return;
        if (this.open && this.showBackdrop) { backdrop.style.opacity = '1'; backdrop.style.pointerEvents = 'auto'; }
        else { backdrop.style.opacity = '0'; backdrop.style.pointerEvents = 'none'; }
    }

    _attachBackdropEvents() {
        const backdrop = this.querySelector(`#${this.id}bc`);
        if (!backdrop) return;
        backdrop.onclick = () => { if (this.backdropDismiss) this.hide(); };
    }

    _attachEscListener() {
        if (this._escListener) return;
        this._escListener = (e) => { if (e.key === 'Escape' && this.open) this.hide(); };
        document.addEventListener('keydown', this._escListener);
    }
}

customElements.define('daisy-sheet', DaisySheetModal);
