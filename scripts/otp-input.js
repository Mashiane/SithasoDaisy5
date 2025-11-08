class OtpInput extends HTMLElement {
    static get observedAttributes() {
        return ['length', 'type'];
    }

    constructor() {
        super();
        this._inputs = [];
        this._value = [];
        this._length = 6;
        this._type = 'text';
    }

    attributeChangedCallback(name, oldValue, newValue) {
        if (oldValue !== newValue) {
            if (name === 'length') {
                this._length = parseInt(newValue) || 6;
                this._render();
            }
            if (name === 'type') {
                this._type = newValue === 'password' ? 'password' : (newValue === 'number' ? 'tel' : 'text');
                this._render();
            }
        }
    }

    connectedCallback() {
        this._length = parseInt(this.getAttribute('length')) || 6;
        this._type = this.getAttribute('type') === 'password'
            ? 'password'
            : (this.getAttribute('type') === 'number' ? 'tel' : 'text');
        this._render();
    }

    _render() {
        // Inline style for error and layout
        if (!document.getElementById('otp-input-style')) {
            const style = document.createElement('style');
            style.id = 'otp-input-style';
            style.textContent = `
                otp-input { display: flex; gap: 0.5rem; }
                .otp-input-box {
                    width: 3.5rem;
                    height: 3.5rem;
                    text-align: center;
                    font-size: 1.5rem;
                    border-radius: 0.5rem;
                    border: 2px solid #d1d5db;
                    outline: none;
                    transition: border-color 0.2s;
                }

                .otp-input-box:focus {
                    border-color: #2563eb;
                    box-shadow: 0 0 0 2px #2563eb33;
                }
                .otp-error {
                    border-color: #ef4444 !important;
                    background-color: #fee2e2 !important;
                    color: #b91c1c !important;
                    animation: shake 0.2s 2;
                }
                @keyframes shake {
                    0% { transform: translateX(0); }
                    25% { transform: translateX(-4px); }
                    50% { transform: translateX(4px); }
                    75% { transform: translateX(-4px); }
                    100% { transform: translateX(0); }
                }
            `;
            document.head.appendChild(style);
        }

        this.innerHTML = `<div class="flex gap-2 otp-wrapper"></div>`;
        this._inputs = [];
        this._value = Array(this._length).fill('');
        const wrapper = this.querySelector('.otp-wrapper');
        wrapper.innerHTML = '';

        for (let i = 0; i < this._length; i++) {
            const input = document.createElement('input');
            input.className = 'otp-input-box input input-bordered';
            input.setAttribute('maxlength', '1');
            input.setAttribute('autocomplete', 'one-time-code');
            input.setAttribute('inputmode', this._type === 'tel' ? 'numeric' : 'text');
            input.setAttribute('aria-label', `OTP digit ${i + 1}`);
            input.type = this._type;
            input.addEventListener('input', (e) => this._onInput(e, i));
            input.addEventListener('keydown', (e) => this._onKeyDown(e, i));
            input.addEventListener('paste', (e) => this._onPaste(e, i));
            this._inputs.push(input);
            wrapper.appendChild(input);
        }
    }

    _onInput(e, idx) {
        const input = e.target;
        let val = input.value;

        // Only allow valid input and raise error if not valid
        let isValid = true;
        if (this._type === 'tel' && !/^[0-9]$/.test(val)) {
            isValid = false;
        }
        if (val.length > 1) {
            val = val[0];
        }

        if (!isValid && val !== '') {
            input.value = '';
            input.classList.add('otp-error');
            setTimeout(() => input.classList.remove('otp-error'), 600);
            this.dispatchEvent(new CustomEvent('otp-error', {
                detail: { index: idx, value: val },
                bubbles: true,
                composed: true
            }));
            return;
        } else {
            input.classList.remove('otp-error');
        }

        input.value = val;
        this._value[idx] = val;

        // Move to next input if filled
        if (val && idx < this._inputs.length - 1) {
            this._inputs[idx + 1].focus();
        }

        // If all filled, fire event
        if (this._value.every(v => v.length === 1)) {
            this.dispatchEvent(new CustomEvent('complete', {
                detail: this._value.join(''),
                bubbles: true,
                composed: true
            }));
        }
    }

    _onKeyDown(e, idx) {
        const input = e.target;
        // Allow navigation and backspace as normal
        if (e.key === 'Backspace') {
            if (input.value === '') {
                if (idx > 0) {
                    this._inputs[idx - 1].focus();
                    this._inputs[idx - 1].value = '';
                    this._value[idx - 1] = '';
                }
            } else {
                input.value = '';
                this._value[idx] = '';
            }
            e.preventDefault();
        } else if (e.key === 'ArrowLeft' && idx > 0) {
            this._inputs[idx - 1].focus();
            e.preventDefault();
        } else if (e.key === 'ArrowRight' && idx < this._inputs.length - 1) {
            this._inputs[idx + 1].focus();
            e.preventDefault();
        } else if (e.key.length === 1 && !e.ctrlKey && !e.metaKey && !e.altKey) {
            // For any printable character, clear the input so only the new char is entered
            input.value = '';
            this._value[idx] = '';
        }
    }

    _onPaste(e, idx) {
        e.preventDefault();
        const paste = (e.clipboardData || window.clipboardData).getData('text');
        const chars = paste.split('');
        for (let i = 0; i < chars.length && idx + i < this._inputs.length; i++) {
            const char = chars[i];
            if (this._type === 'tel' && !/^[0-9]$/.test(char)) continue;
            this._inputs[idx + i].value = char;
            this._value[idx + i] = char;
        }
        // Focus next empty input
        for (let i = idx; i < this._inputs.length; i++) {
            if (!this._inputs[i].value) {
                this._inputs[i].focus();
                break;
            }
        }
        // If all filled, fire event
        if (this._value.every(v => v.length === 1)) {
            this.dispatchEvent(new CustomEvent('otp-complete', {
                detail: this._value.join(''),
                bubbles: true,
                composed: true
            }));
        }
    }

    get value() {
        return this._value.join('');
    }

    set value(val) {
        this._value = Array.from(val).slice(0, this._length);
        for (let i = 0; i < this._length; i++) {
            this._inputs[i].value = this._value[i] || '';
        }
    }

    compare(otp) {
        const isMatch = this.value === otp;
        this._inputs.forEach(input => {
            input.classList.toggle('otp-error', !isMatch);
        });
        return isMatch;
    }

    clear() {
        this._value = Array(this._length).fill('');
        this._inputs.forEach(input => {
            input.value = '';
            input.classList.remove('otp-error');
        });
        if (this._inputs[0]) this._inputs[0].focus();
    }
}

customElements.define('otp-input', OtpInput);