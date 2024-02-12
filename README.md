# ASMVQA: An Assistant System for Medical Visual Question Answering

**Tips: The complete  code will be published after the paper is included.**

[Paper]

This is the repository for the ASMVQA, a unified assistant system for users to conveniently perform diverse medical practice. The demonstration video of our system can be found at https://youtu.be/QkEeFlu1x4A. The repository contains:

- Overview
- Med-VQA Data for Pre-training and Fine-tuning
- Install

## Overview

We demonstrate ASMVQA, an Assistant System for Medical Visual Question Answering. Given unstructured clinical data, our system first provides a useful tool to automatically build medical visual question answering (VQA) datasets for users. Given a dataset, users can then conveniently select state-of-the-art (SOTA) models from our model library to perform extensive experiments. With simple
configurations, our system automatically trains and evaluates the selected models over the dataset, and reports the comprehensive results to users. In particular, we develop a robot assistant to guide users without professional background for performing medical practice, including model evaluation, online clinical consulting, and electronic medical record (EMR) retrieval.

<img src="D:\Download\fig1 (1).png" alt="fig1 (1)" style="zoom:20%;" />

## Med-VQA Data for Pre-training and Fine-tuning

We provide the benchmark Med-VQA datasets for practice, you can download them from Google Cloud.

## Install

1. Clone this repository and navigate to Demo/VQASystem:

2. Install Package:  Please refer to the envs_files folder to create conda environments of the models we provide. 

3. We use MySQL for data storage,  you can restore the database by refering to db.sql:

```sql
sudo mysql
create database vqa;
use vqa;
source /your_path/db.sql;
```

4. Configure model config: Please deploy the download datasets and modify the model config in file /Demo/VQASystem/model_info.py. An example of modifying the config:

```
tbh
```

5. Run Application: We use streamlit framework to develop our App.

```
pip install streamlit
streamlit run Home.py
```

If you're interested in some of the model provided in our model library, you can check the readme file in relevant model folder.







