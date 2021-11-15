# CCPM

### 简介
中国古典诗歌翻译数据集(Chinese Classical Poetry Retrieval Dataset-Multiple Choice)，可用于诗歌的匹配、理解和翻译。给定中国古典诗歌的现代文描述，要求从候选的四句诗中挑选出与给定的现代文描述意思符合的那一句诗歌。数据来自网站上提供的中国古典诗歌和其相应的现代汉语翻译，由清华大学收集整理。

### 论文
[CCPM: A Chinese Classical Poetry Matching Dataset](https://arxiv.org/pdf/2106.01979.pdf). arXiv 2021.

### 数据规模
训练集：21,778句；验证集：2,720句；测试集：2,720句。

### 数据格式描述
每条数据包含诗歌对应的翻译(translation，以字符串形式存储)，四个对应诗歌的备选选项(choice，以列表形式存储)，答案编号(answer，为0-3之间的整数)。

### 数据样例
```
{
    "translation": "一生当中疾病缠身今日独上高台。",
    "choices": ["一春多病几登台", "百年多病独登台", "百年多病负登临", "况多愁病独登台"],
    "answer": 1
}
```

###评测代码
预测结果需要和训练集数据格式保持一致。
正确提交文件名：CCPM.jsonl
```shell
python eval.py prediction_file test_private_file
```

评测指标为Accuracy，输出结果为字典格式：
```she
return {"accuracy": _}
```

### 作者列表
李文浩，岂凡超，孙茂松，矣晓沅，张家瑞

### 制作单位
清华大学

### 论文引用
```
@article{li2021CCPM,
  title = {CCPM: A Chinese Classical Poetry Matching Dataset},
  author = {Li, Wenhao and Qi, Fanchao and Sun, Maosong and Yi, Xiaoyuan and Zhang, Jiarui},
  journal={arXiv preprint arXiv:2106.01979},
  year = {2021}
}
```
