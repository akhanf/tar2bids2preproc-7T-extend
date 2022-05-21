from snakemake.utils import min_version
min_version("6.0")

configfile: 'config.yml'

module tar2bids2preproc:
    snakefile:
        github("akhanf/tar2bids2preproc-7T",path="workflow/Snakefile",branch="main") #change to tag for reproducibility
    config: config['tar2bids2preproc']

use rule * from tar2bids2preproc


