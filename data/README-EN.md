# CCPM

### Introduction
CCPM is a large Chinese classical poetry Retrieval Dataset-Multiple Choice, which can be used for poem matching, understanding and translation. The main task of this dataset is: given a modern description of the Chinese classical poetry, the model is supposed to select one from four candidate poems that semantically matches the given description most. This dataset comes from the Chinese classical poems and their corresponding modern Chinese translations provided on the website, collected by Tsinghua University.

### Paper
[CCPM: A Chinese Classical Poetry Matching Dataset](https://arxiv.org/pdf/2106.01979.pdf). arXiv 2021.

### Data Size
Training set: 21,778; Validation set: 2,720; Test set: 2,720.

### Data Format
Each instance is composed of the description in modern Chinese (translation, a string), four candidate lines of Chinese classical poetry (choice, a list), and the index of the correct line (answer, an integer between 0 and 3).

### Example
```
{
    "translation": "一生当中疾病缠身今日独上高台。",
    "choices": ["一春多病几登台", "百年多病独登台", "百年多病负登临", "况多愁病独登台"],
    "answer": 1
}
```

### Evaluation Code
The format of the prediction file needs to be consistent with the training set.
The correct submission file name is CCPM.jsonl.
```shell
python eval.py prediction_file test_private_file
```
The Evaluation Metric is accuracy, and the output is in dictionary format.
```she
return {"accuracy": _}
```

### Author List
Wenhao Li, Fanchao Qi, Maosong Sun, Xiaoyuan Yi, Jiarui Zhang

### Institutions
Tsinghua University

### Citation
```
@inproceedings{li2021ccpm,
  title={CCPM: A Chinese Classical Poetry Matching Dataset},
  author={Li, Wenhao and Qi, Fanchao and Sun, Maosong and Yi, Xiaoyuan and Zhang, Jiarui},
  journal={arXiv preprint arXiv:2106.01979},
  year={2021}
}
```
