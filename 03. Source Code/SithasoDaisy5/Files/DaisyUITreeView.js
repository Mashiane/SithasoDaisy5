const DEFAULTS = {
  expandIconUrl: './assets/chevron-down-solid.svg',
  collapseIconUrl: './assets/chevron-right-solid.svg',
  hasCheckbox: false,
  treeName: 'treeView', // Changed to camelCase
  multipleSelect: false,
  multipleCheck: false,
  iconHeight: '16px',
  iconWidth: '16px',
  inlineEdit: false,
  dragNDrop: false
};

export default class DaisyUITreeView {
  constructor(container, options = {}) {
    this.element = container;
    this.settings = { ...DEFAULTS, ...options };
    this.treeName = this._normalizeId(this.settings.treeName);
    this.tree = [];
    this.nodeMap = new Map();
    this._checkedNodes = new Set();
    this._selectedNodes = new Set();
    this._visibleNodes = new Set();
    this._batchUpdateInProgress = false;
    if (this.settings.data) {
      let data = Array.isArray(this.settings.data) ? JSON.parse(JSON.stringify(this.settings.data)) : [];
      this.tree = data;
      delete this.settings.data;
    }
    this._refresh  
    if (this.settings.dragNDrop) this._enableDragAndDrop();
    this.element.addEventListener('click', (e) => this._onClick(e)); // Event delegation
  }

  collapseAll() {
    const collapseRecursive = (nodes) => {
      for (const node of nodes) {
        node.expanded = false; // Collapse the node
        if (node.nodes) collapseRecursive(node.nodes); // Recursively collapse child nodes
      }
    };
    collapseRecursive(this.tree);
    this._refresh(); // Refresh the tree view
  }
  
  expandAll() {
    const expandRecursive = (nodes) => {
      for (const node of nodes) {
        node.expanded = true; // Expand the node
        if (node.nodes) expandRecursive(node.nodes); // Recursively expand child nodes
      }
    };
    expandRecursive(this.tree);
    this._refresh(); // Refresh the tree view
  }
  
  _refresh() {
    const fragment = document.createDocumentFragment();
    this._initializeData({ nodes: this.tree });
    this._build(fragment, this.tree);
    this.element.innerHTML = ''; // Clear only once
    this.element.appendChild(fragment);
}

  _initializeData(context) {
    if (!context.nodes) return;
    for (const node of context.nodes) {
      node.nodeId = this._normalizeId(node.nodeId);
      node.parentId = this._normalizeId(node.parentId);
      this._visibleNodes.add(node.nodeId);
      this.nodeMap.set(node.nodeId, node);
      if (node.nodes) this._initializeData({ nodes: node.nodes });
    }
  }

  _build(container, nodeList) {
    for (const node of nodeList) {
      const item = document.createElement('li');
      item.id = `${this.treeName}-${node.nodeId}`;
      item.classList.add('list-item');
      item.dataset.id = node.nodeId;
      item.setAttribute('role', 'treeitem');
      item.setAttribute('aria-expanded', node.expanded || false);
      item.setAttribute('aria-selected', this._selectedNodes.has(node.nodeId) || false);
      if (this._visibleNodes.has(node.nodeId)) {
        item.classList.add('hidden');
      }
      if (this._selectedNodes.has(node.nodeId)) {
        item.classList.add('menu-active');
      }
      if (node.disabled) {
        item.setAttribute('aria-disabled', 'true');
        item.classList.add('menu-disabled');  
      }
      
      if (node.nodes && node.nodes.length > 0) {
        const details = document.createElement('details');
        details.id = `${this.treeName}-${node.nodeId}-details`;
        details.dataset.id = node.nodeId;
        if (node.expanded) details.setAttribute('open', '');

        const summary = document.createElement('summary');
        summary.id = `${this.treeName}-${node.nodeId}-summary`;
        summary.dataset.id = node.nodeId;

        if (node.iconUrl) {
          const icon = document.createElement('svg-renderer');
          icon.id = `${this.treeName}-${node.nodeId}-icon`;
          icon.dataset.id = node.nodeId;
          icon.dataset.src = node.expanded ? this.settings.collapseIconUrl : this.settings.expandIconUrl;
          icon.classList.add('state-icon');
          icon.setAttribute('style', 'pointer-events:none;'); // Updated
          icon.setAttribute('fill', 'currentColor'); // Updated
          icon.setAttribute('data-js', 'enabled'); // Updated
          icon.setAttribute('width', this.settings.iconWidth);
          icon.setAttribute('height', this.settings.iconHeight);
          summary.appendChild(icon);
        }

        if (this.settings.hasCheckbox) {
          const checkbox = document.createElement('input');
          checkbox.id = `${this.treeName}-${node.nodeId}-check`;
          checkbox.type = 'checkbox';
          checkbox.classList.add('checkbox');
          checkbox.dataset.id = node.nodeId;
          checkbox.checked = this._checkedNodes.has(node.nodeId);

          checkbox.addEventListener('change', (e) => {
            const checked = e.target.checked;
            this._onCheckboxChange(node.nodeId, checked);
          });

          summary.appendChild(checkbox);
        }

        const txtBox = document.createElement('input');
        txtBox.id = `${this.treeName}-${node.nodeId}-input`;
        txtBox.type = 'text';
        txtBox.value = node.text;
        txtBox.classList.add("input", "input-ghost", "input-md", "hidden");  
        txtBox.dataset.id = node.nodeId;
        summary.appendChild(txtBox);

        const textNode = document.createElement('span');
        textNode.id = `${this.treeName}-${node.nodeId}-text`;
        textNode.textContent = node.text
        textNode.dataset.id = node.nodeId;

        summary.appendChild(textNode);
        details.appendChild(summary);

        const nestedList = document.createElement('ul');
        nestedList.id = `${this.treeName}-${node.nodeId}-ul`;
        nestedList.dataset.id = node.nodeId;
        ''
        this._build(nestedList, node.nodes);
        details.appendChild(nestedList);

        item.appendChild(details);
      } else {
        const link = document.createElement('a');
        link.id = `${this.treeName}-${node.nodeId}-anchor`;
        link.dataset.id = node.nodeId;
        
        if (node.iconUrl) {
          const icon = document.createElement('svg-renderer');
          icon.dataset.id = node.nodeId;
          icon.id = `${this.treeName}-${node.nodeId}-icon`;
          icon.dataset.src = node.expanded ? this.settings.collapseIconUrl : this.settings.expandIconUrl;
          icon.classList.add('state-icon');
          icon.setAttribute('style', 'pointer-events:none;'); // Updated
          icon.setAttribute('fill', 'currentColor'); // Updated
          icon.setAttribute('data-js', 'enabled'); // Updated
          icon.setAttribute('width', this.settings.iconWidth);
          icon.setAttribute('height', this.settings.iconHeight);
          link.appendChild(icon);
        }

        if (this.settings.hasCheckbox) {
          const checkbox = document.createElement('input');
          checkbox.id = `${this.treeName}-${node.nodeId}-check`;
          checkbox.type = 'checkbox';
          checkbox.classList.add('checkbox');
          checkbox.dataset.id = node.nodeId;
          checkbox.checked = this._checkedNodes.has(node.nodeId);

          checkbox.addEventListener('change', (e) => {
            const checked = e.target.checked;
            this._onCheckboxChange(node.nodeId, checked);
          });

          link.appendChild(checkbox);
        }
        
        const txtBox = document.createElement('input');
        txtBox.id = `${this.treeName}-${node.nodeId}-input`;
        txtBox.type = 'text';
        txtBox.value = node.text;
        txtBox.classList.add("input", "input-ghost", "input-md", "hidden");
        txtBox.dataset.id = node.nodeId;
        link.appendChild(txtBox);

        const textNode = document.createElement('span');
        textNode.id = `${this.treeName}-${node.nodeId}-text`;
        textNode.textContent = node.text
        textNode.dataset.id = node.nodeId;
        link.appendChild(textNode);
        item.appendChild(link);
      }

      container.appendChild(item);
    }
  }

  _onClick(e) {
    const item = e.target.closest('.list-item');
    if (!item || item.classList.contains('menu-disabled')) return;
    const id = this._normalizeId(item.dataset.id);
    if (!this.nodeExists(id)) return;
    const node = this.findNode(id);

    if (e.target.classList.contains('state-icon')) {
      const grp = document.getElementById(`${this.treeName}-${id}`);
      const ico = item.querySelector('.state-icon');
      const show = grp.hasAttribute('open');
      ico.dataset.src = show ? this.settings.expandIconUrl : this.settings.collapseIconUrl;
      ico.alt = show ? 'expanded' : 'collapsed';
      const evt = show ? 'nodeExpanded' : 'nodeCollapsed';
      //this.element.dispatchEvent(new CustomEvent(evt, { detail: { node } }));
    } else if (this.settings.inlineEdit && e.target.id === `${this.treeName}-${id}-text`) {
      this._enableInlineEdit(id); // Enable inline editing
    } else {
      this.selectNode(id);
    }
  }

  _onCheckboxChange(nodeId, checked) {
    if (!this.nodeExists(nodeId)) return;
    const node = this.findNode(nodeId);
    
    if (checked) {
      this._checkedNodes.add(nodeId);
    } else {
      this._checkedNodes.delete(nodeId);
    }
    
    const updateChildren = (node, checked) => {
      if (!node) return;
      if (checked) this._checkedNodes.add(node.nodeId);
      else this._checkedNodes.delete(node.nodeId);
      if (node.nodes) node.nodes.forEach(child => updateChildren(child, checked));
    };

    const updateParents = (node) => {
      if (!node) return;
      const parent = this.findNode(node.parentId);
      if (!parent || !parent.nodes) return;
      const allChecked = parent.nodes.every(child => this._checkedNodes.has(child.nodeId));
      if (allChecked) this._checkedNodes.add(parent.nodeId);
      else this._checkedNodes.delete(parent.nodeId);
      updateParents(parent);
    };

    updateChildren(node, checked);
    updateParents(node);
    this._refresh();
  }


  _enableDragAndDrop() {
    this.element.addEventListener('dragstart', (e) => {
        const item = e.target.closest('.list-item');
        if (item) e.dataTransfer.setData('id', item.dataset.id);
    });

    this.element.addEventListener('dragover', (e) => {
        e.preventDefault();
        const item = e.target.closest('.list-item');
        if (item) item.classList.add('drag-over');
    });

    this.element.addEventListener('dragleave', (e) => {
        const item = e.target.closest('.list-item');
        if (item) item.classList.remove('drag-over');
    });

    this.element.addEventListener('drop', (e) => {
        e.preventDefault();
        const targetItem = e.target.closest('.list-item');
        if (!targetItem) return;

        const draggedNodeId = e.dataTransfer.getData('id');
        const targetNodeId = targetItem.dataset.id;

        if (draggedNodeId === targetNodeId) return; // Prevent dropping onto itself

        const draggedNode = this.findNode(draggedNodeId);
        const targetNode = this.findNode(targetNodeId);

        let parent = targetNode;
        while (parent) {
            if (parent.nodeId === draggedNodeId) return; // Prevent dropping onto descendants
            parent = this.findNode(parent.parentId);
        }

        if (draggedNode && targetNode) {
            // Enhancement: Dispatch custom events for drag-and-drop actions
            this.element.dispatchEvent(new CustomEvent('nodeDragStart', { detail: { draggedNode } }));
            this.element.dispatchEvent(new CustomEvent('nodeDrop', { detail: { draggedNode, targetNode } }));

            this.removeNode(draggedNodeId);
            this.addNode(targetNodeId, draggedNode.nodeId, draggedNode.iconUrl, draggedNode.text, draggedNode.href, draggedNode.hasCheckbox);
        }
    });
}

_normalizeId(id) {
  if (id === null || id === undefined) id = '';
  if (typeof id !== 'string') id = '';
  id = id.trim();
  return id.toString().toLowerCase();
}

_cstr(id) {
  if (id === null || id === undefined) id = '';
  if (typeof id !== 'string') id = '';
  return id.toString()
}
  
  nodeExists(nodeId) {
    const normalizedId = this._normalizeId(nodeId);
    if (normalizedId === '') return false;
    return this.nodeMap.has(normalizedId);
  }

  findNode(nodeId) {
    const normalizedId = this._normalizeId(nodeId);
    if (normalizedId === '') return null; // Return null if the normalized ID is empty
    return this.nodeMap.get(normalizedId) || null; // Return the node or null if not found
  }
  
  addNode(parentId, nodeId, iconUrl = '', text, href = '') {
    parentId = this._normalizeId(parentId);
    nodeId = this._normalizeId(nodeId);
    iconUrl = this._cstr(iconUrl);
    text = this._cstr(text);
    href = this._cstr(href);
    //
    if (nodeId === '') return;
    if (this.nodeExists(nodeId)) return;
    //
     if ((parentId !== '') && (!this.nodeExists(parentId))) {
      return
    }
    
    const hasCheckbox = this.settings.hasCheckbox || false;
    const newNode = { nodeId, parentId, iconUrl, text, href, hasCheckbox };

    if (parentId === '') {
      this.tree.push(newNode);
    } else {
      const parent = this.findNode(parentId);
      parent.nodes = parent.nodes || [];
      parent.nodes.push(newNode);
      this.nodeMap.set(parentId, parent); // Update parent in nodeMap
    }

    this.nodeMap.set(nodeId, newNode); // Add to node map
    this._visibleNodes.add(nodeId);
    this._refresh();
  }

  checkNode(nodeId, state) {
    if (!this.nodeExists(nodeId)) return;
    const node = this.findNode(nodeId);
    
    const checkChildren = (node, state) => {
      if (!node) return;
      if (state) {
        this._checkedNodes.add(node.nodeId);
      } else {
        this._checkedNodes.delete(node.nodeId);
      }

      if (node.nodes) {
        node.nodes.forEach(child => checkChildren(child, state));
      }
    };

    checkChildren(node, state);
    this._onCheckboxChange(nodeId, state); // Update parent nodes
  }

  removeNode(nodeId) {
    nodeId = this._normalizeId(nodeId);
    if (!this.nodeExists(nodeId)) return;

    // Helper function to recursively remove the node from the tree
    const removeFromTree = (nodes, nodeId) => {
        for (let i = 0; i < nodes.length; i++) {
            if (nodes[i].nodeId === nodeId) {
                nodes.splice(i, 1); // Remove the node from the array
                return true; // Node found and removed
            }
            if (nodes[i].nodes) {
                const removed = removeFromTree(nodes[i].nodes, nodeId);
                if (removed) return true; // Stop searching if the node is removed
            }
        }
        return false; // Node not found
    };

    // Remove the node from the tree structure
    removeFromTree(this.tree, nodeId);

    // Remove the node from the nodeMap
    this.nodeMap.delete(nodeId);

    // Refresh the tree view
    this._refresh();
}

  
  expandNode(nodeId) {
    if (!this.nodeExists(nodeId)) return;
    const node = this.findNode(nodeId);
    
    const expandChildren = (node) => {
      if (!node) return;
      if (node.nodes) {
        node.nodes.forEach(child => expandChildren(child));
      }
    };
    node.expanded = true;
    expandChildren(node);
    this._refresh();
  }

  collapseNode(nodeId) {
    if (!this.nodeExists(nodeId)) return;
    const node = this.findNode(nodeId);
    
    const collapseChildren = (node) => {
      if (!node) return;
      if (node.nodes) {
        node.nodes.forEach(child => collapseChildren(child));
      }
    };
    node.expanded = false;
    collapseChildren(node);
    this._refresh();
  }

  enableNode(nodeId) {
    if (!this.nodeExists(nodeId)) return;
    const node = this.findNode(nodeId);
    
    const enableChildren = (node) => {
      if (!node) return;
      if (node.nodes) {
        node.nodes.forEach(child => enableChildren(child));
      }
    };
    node.disabled = false;
    enableChildren(node);
    this._refresh();
  }

  disableNode(nodeId) {
    if (!this.nodeExists(nodeId)) return;
    const node = this.findNode(nodeId);
    
    const disableChildren = (node) => {
      if (!node) return;
      if (node.nodes) {
        node.nodes.forEach(child => disableChildren(child));
      }
    };
    node.disabled = true;
    disableChildren(node);
    this._refresh();
  }
  
  clear() {
    this.tree = [];
    this._checkedNodes.clear();
    this._selectedNodes.clear(); // Clear all selected nodes
    this._visibleNodes.clear()
    this._refresh();
    //this.element.dispatchEvent(new CustomEvent('cleared'));
  }

  getChildren(nodeId) {
    if (!this.nodeExists(nodeId)) return []
    const node = this.findNode(nodeId);
    return Array.isArray(node.nodes) ? [...node.nodes] : [];
  }

  toggleNode(nodeId) {
    if (!this.nodeExists(nodeId)) return;
    const node = this.findNode(nodeId);
    node.expanded = !node.expanded;
    this._refresh();
  }

  sortNodes(compareFunction) {
    const sortRecursive = (nodes) => {
      nodes.sort(compareFunction);
      for (const node of nodes) {
        if (node.nodes) sortRecursive(node.nodes);
      }
    };
    sortRecursive(this.tree);
    this._refresh();
  }

  removeChildren(nodeId) {
    if (!this.nodeExists(nodeId)) return;
    const node = this.findNode(nodeId);
    
    if (node.nodes) {
      node.nodes.forEach(child => this._checkedNodes.delete(child.nodeId));
      node.nodes.forEach(child => this._selectedNodes.delete(child.nodeId));
      node.nodes.forEach(child => this._visibleNodes.delete(child.nodeId));
    }
    node.nodes = [];
    this._refresh();
    //this.element.dispatchEvent(new CustomEvent('childrenRemoved', { detail: { node } }));
  }

  updateNode(nodeId, iconUrl, text, href = '') {
    nodeId = this._normalizeId(nodeId);
    iconUrl = this._cstr(iconUrl);
    text = this._cstr(text);
    href = this._cstr(href);
    
    if (nodeId === '') return;
    if (!this.nodeExists(nodeId)) return;
    
    const node = this.findNode(nodeId);
    node.iconUrl = iconUrl;
    node.text = text;
    node.href = href;
    this._refresh();
    //this.element.dispatchEvent(new CustomEvent('nodeUpdated', { detail: { node } }));
  }

  selectNode(nodeId) {
    nodeId = this._normalizeId(nodeId);
    if (!this.nodeExists(nodeId)) return;
    if (!this.settings.multipleSelect) {
      this._selectedNodes.clear();
    }
    this._selectedNodes.add(nodeId);
    this._refresh();
    // Find the corresponding node object
    //const node = this.findNode(nodeId);

    // Dispatch a custom event for node selection
    //this.element.dispatchEvent(new CustomEvent('nodeSelected', { detail: { node } }));
  }

  selectNodes(nodeIds) {
    if (!Array.isArray(nodeIds)) return;
    const normalizedIds = nodeIds.map(id => this._normalizeId(id));
    this._selectedNodes.clear();
    
    // Iterate through the normalized IDs
    normalizedIds.forEach(nodeId => {
        if (!this.nodeExists(nodeId)) return; // Skip if the node does not exist
        this._selectedNodes.add(nodeId);
    });
    this._refresh();

    // Optionally, dispatch a custom event for node selection
    // this.element.dispatchEvent(new CustomEvent('nodesSelected', { detail: { nodeIds: normalizedIds } }));
}

  getSelectedNode(includeChildren = false) {
    const el = this.element.querySelector('.menu-active');
    if (!el) return null;
    const nodeId = this._normalizeId(el.dataset.id);
    const node = this.findNode(nodeId);
    if (!node || !includeChildren) return node;
    return { ...node, nodes: node.nodes ?? [] };
  }

  getSelectedNodes() {
    // Return all selected nodes
    return Array.from(this._selectedNodes)
  }

  getCheckedNodes() {
    return Array.from(this._checkedNodes);
  }

  setCheckedNodes(nodeIds) {
    this._checkedNodes = new Set(nodeIds.map(id => this._normalizeId(id)));
    this._refresh();
  }

  searchNodes(query) {
    const results = [];
    const searchRecursive = (nodes) => {
      for (const node of nodes) {
        node.highlighted = false; // Reset previous search state
        if (node.text.toLowerCase().includes(query.toLowerCase())) {
          results.push(node);
          node.highlighted = true; // Highlight matching nodes
        }
        if (node.nodes) searchRecursive(node.nodes);
      }
    };
    searchRecursive(this.tree);
    this._refresh();
    return results;
  }

  enableInlineEditing(nodeId) {
    this._enableInlineEdit(nodeId);
  }

  filterNodes(criteria) {
    const filterRecursive = (nodes) => {
      return nodes
        .filter((node) => criteria(node))
        .map((node) => ({
          ...node,
          nodes: node.nodes ? filterRecursive(node.nodes) : [],
        }));
    };
    this.tree = filterRecursive(this.tree);
    this._refresh();
  }

  _dispatchEvent(eventName, detail) {
    const event = new CustomEvent(eventName, { detail });
    this.element.dispatchEvent(event);
  }

  _enableInlineEdit(nodeId) {
    const node = this.findNode(nodeId);
    if (!node) return
    
    const item = this.element.querySelector(`[data-id='${nodeId}']`);
    if (!item) return;

    const txt = item.querySelector(`#${this.treeName}-${nodeId}-text`);
    if (!txt) return;

    const input = item.querySelector(`#${this.treeName}-${nodeId}-input`);
    if (!input) return;

    input.addEventListener('blur', () => {
        if (input.value.trim() === '') {
            input.classlist.add('hidden');
            txt.classlist.remove('hidden');
            this._refresh(); // Cancel editing if input is empty
            return;
        }
        node.text = input.value.trim(); // Update the node text
        input.classlist.add('hidden');
        txt.classlist.remove('hidden');
        this._refresh();
        //this.element.dispatchEvent(new CustomEvent('nodeEdited', { detail: { node } }));
    });
    const originalText = node.text;
    input.addEventListener('keydown', (e) => {
        if (e.key === 'Enter') input.blur();
        if (e.key === 'Escape') {
          node.text = originalText;
          this._refresh();
        }
    });
    txt.classlist.add('hidden');
    input.classlist.remove('hidden');
    input.focus();

    // Enhancement: Dispatch a custom event when inline editing starts
    //this.element.dispatchEvent(new CustomEvent('inlineEditStarted', { detail: { node } }));
}
}