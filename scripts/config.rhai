let titles_type = ["Dataset", "Survey", "Review", "Overview"];
let titles_model = ["Transformer", "LLM", "Diffusion", "Sparsity", "FPGA", "Distribution", "Heterogeneous", "Compiler"];
let titles_method = ["Pre-train", "Pretrain"];
let titles =  titles_model + titles_method + titles_type;
let authors_array = ["Yu Wang", "Guohao Dai", "Song Han", "Jason Cong"];

let conferences = [
    // Arch
    "ASPLOS", "ATC", "DATE", "EuroSys", "FAST", "HPCA", "ISCA", "MICRO", "PPoPP", "SC", "SoCC",
    // PL
    "PLDI",
    // System
    "FSE/ESEC", "ICSE", "ISSTA", "OSDI", "SOSP",
    // Security
    "ACSA", "AsiaCCS", "CCS", "DSN", "ESORICS", "EuroS&P", "ICICS", "NDSS", "RAID", "SP", "USENIX Security"
];

let start = conferences.shift();
let conferences_rg = conferences.reduce(|sum, v| sum + "|" + v, start);
let conferences_rg = "(" + conferences_rg + ")([\\s'-]*\\d+)?";

let start = titles.shift();
let title_rg = titles.reduce(|sum, v| sum + "|" + v, start);

let start = authors_array.shift();
let authors_rg = authors_array.reduce(|sum, v| sum + "|" + v, start);

export title_rg;
export authors_rg;
export conferences_rg;
