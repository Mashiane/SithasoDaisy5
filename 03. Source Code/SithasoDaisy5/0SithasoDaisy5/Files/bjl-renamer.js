/*
 * Utility to rename BJL-JSON component names (and linked event/script identifiers)
 * by applying identifier-safe replacements across all JSON keys and string values.
 *
 * This is a plain browser script (NOT an ES module).
 * It exposes:
 *   window.BJLJsonRenamer.renameComponentsInBjlJson(jsonObject, renameMap)
 *   window.BJLJsonRenamer.renameComponentsInBjlJsonFile(file, renameMap)
 *
 * Example:
 *   const renameMap = { mdl: 'mdlBillingtype', tbl: 'tblBillingtype' };
 *   const updated = window.BJLJsonRenamer.renameComponentsInBjlJson(originalJsonObj, renameMap);
 *   const updatedText = JSON.stringify(updated, null, 2);
 */

"use strict";

function escapeRegExp(s) {
    return String(s).replace(/[.*+?^${}()|[\]\\]/g, "\\$&");
}

function normalizeRenameMap(renameMap) {
    if (renameMap == null || typeof renameMap !== "object" || Array.isArray(renameMap)) {
        throw new TypeError("renameMap must be an object like { oldName: newName }");
    }

    const entries = Object.entries(renameMap)
        .filter(([oldName]) => typeof oldName === "string" && oldName.length > 0)
        .map(([oldName, newName]) => [oldName, String(newName)]);

    if (entries.length === 0) {
        throw new Error("renameMap is empty");
    }

    // Apply longer names first to avoid partial overlaps.
    entries.sort((a, b) => b[0].length - a[0].length);

    return entries;
}

// Replaces identifier tokens only. "Identifier" here is [A-Za-z0-9_].
// This avoids changing substrings inside larger names (e.g., "mdlsideview" won’t match "mdl").
function replaceIdentifiers(input, renameEntries) {
    let out = input;
    for (const [oldName, newName] of renameEntries) {
        const re = new RegExp(`(^|[^\\w])${escapeRegExp(oldName)}(?=[^\\w]|$)`, "g");
        out = out.replace(re, (_, prefix) => `${prefix}${newName}`);
    }
    return out;
}

function renameComponentsInBjlJson(jsonObject, renameMap) {
    const renameEntries = normalizeRenameMap(renameMap);

    function visit(node) {
        if (node == null) return node;

        const t = typeof node;
        if (t === "string") {
            return replaceIdentifiers(node, renameEntries);
        }
        if (t === "number" || t === "boolean") {
            return node;
        }
        if (Array.isArray(node)) {
            return node.map(visit);
        }
        if (t === "object") {
            const out = {};
            for (const [key, value] of Object.entries(node)) {
                const newKey = replaceIdentifiers(key, renameEntries);
                out[newKey] = visit(value);
            }
            return out;
        }

        // functions / symbols etc. should not appear in parsed JSON
        return node;
    }

    return visit(jsonObject);
}

async function renameComponentsInBjlJsonFile(file, renameMap) {
    if (!file || typeof file.text !== "function") {
        throw new TypeError("file must be a browser File/Blob with a .text() method");
    }
    const text = await file.text();
    const parsed = JSON.parse(text);
    return renameComponentsInBjlJson(parsed, renameMap);
}

// Expose as a global (browser).
// Using globalThis when available keeps it working in more environments.
const target = typeof window !== "undefined" ? window : (typeof globalThis !== "undefined" ? globalThis : this);
target.BJLJsonRenamer = {
    renameComponentsInBjlJson,
    renameComponentsInBjlJsonFile,
};
