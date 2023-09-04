

import subprocess
cmd = ['java', '-cp', 'stanford-corenlp-3.4.1.jar', 'edu.stanford.nlp.process.PTBTokenizer', '-preserveLines', '-lowerCase', 'tmpOhOvMx']
path_to_jar_dirname = '/home/sepehrkianian09/Repos/temp_where-image2/tools/coco-caption-master/pycocoevalcap/tokenizer'
p_tokenizer = subprocess.Popen(['ls'], cwd=path_to_jar_dirname, \
                stdout=subprocess.PIPE)