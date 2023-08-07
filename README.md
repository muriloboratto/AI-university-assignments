<h1 align="center"> AI university assignments and workshops using Intel Packages </h1>

<div align="center">
<a href="link_for_webite">
<img height = "250em" src = "1-Perceptron/images/logo-intel.jpg">
</a>
</div>

## About:

This repository contains the material corresponding to the webinar/Hands-on: _AI university assignments and workshops using Intel Packages_ organized by HPC/CIMATEC. The objectives are:

By the end of the assignments and workshops, students become aware of the breadth of the Intel AI portfolio and experience the benefits of using Intel AI software and hardware co-optimized solutions. By default, students consider Intel's AI portfolio for future academic and professional AI projects. The material is available in \*.ipynb (Jupyter NoteBook) format. There are some notebooks in this repository divided by topics.

## Getting started with samples:

The best oneAPI sample to start with depends on what you are trying to learn or types of problems you are trying to solve.

| If you want to learn about... | Start with...
|:---                           |:---
| The basics concepts of using a perceptron neural network using Intel® Python  | Node, topology with augmented vectors, training algorithm, and convergence theorem. Hands-on using Intel Python and Intel Extension for Scikit-learn.
| The basics concepts of using a neural network | Multilayer perceptron network architecture. The backpropagation algorithm. Hands-on using Intel Python and PyTorch.
| Bio-inspired algorithms    | Genetic algorithms, particle swarm optimization, ant colony optimization algorithm, exercises using Intel SigOpt.
| HPC and  simulations | Performance metrics for validating the developed application.

>**Note**: The `README.md` included with each sample provides build instructions for all supported operating system. For samples run in Jupyter Notebooks, you might need to install or configure additional frameworks or package managers if you do not already have them on your system.

### Installing dependencies:

For installing dependencies more quickly, you can run the following command in a terminal inside the cloned repository:

    sudo apt update && sudo apt install python3 python3-pip
    pip3 install -r ./Installing-Dependencies/requirements.txt

The project dependencies are described in ```./Installing-Dependencies/requirements.txt``` file within the repository. In summary, here is what you will need to run the project:

- ```python3```
- ```jupyter```
- ```scikit-learn 1.2.2``` 
- ```torch 2.0.0```
- ```numpy 1.23.5```
- ```pandas 2.0.2```
- ```matplotlib 3.7.1```
- ```pydot 1.4.2```
- ```graphviz 0.20.1```
- ```keras 2.12.0```

  
## Repository structure:

The AI-sample repository is organized by high-level categories.

- [Perceptron]
  - [01-perceptron-python.ipynb](https://github.com/muriloboratto/AI-university-assignments/blob/master/1-Perceptron/01-perceptron-python.ipynb)
  - [02-perceptron-bias.ipynb](https://github.com/muriloboratto/AI-university-assignments/blob/master/1-Perceptron/02-perceptron-training.ipynb)
  - [03-perceptron-training.ipynb](https://github.com/muriloboratto/AI-university-assignments/blob/master/1-Perceptron/03-percpetron-bias.ipynb)
  - [04-perceptron-scikit-learning](https://github.com/muriloboratto/AI-university-assignments/blob/master/1-Perceptron/04-perceptron-scikit-learning.ipynb)
  - [05-perceptron-assessment.ipynb](https://github.com/muriloboratto/AI-university-assignments/blob/master/1-Perceptron/05-perceptron-assessment.ipynb)
- [Neural Network]
  - [01-multilayer-perceptron-introduction.ipynb](https://github.com/muriloboratto/AI-university-assignments/blob/master/2-Neural-Network/01-multilayer-perceptron-introduction.ipynb)
  - [02-multilayer-perceptron-classification.ipynb](https://github.com/muriloboratto/AI-university-assignments/blob/master/2-Neural-Network/02-multilayer-perceptron-classification.ipynb)
  - [03-multilayer-perceptron-regression.ipynb](https://github.com/muriloboratto/AI-university-assignments/blob/master/2-Neural-Network/03-multilayer-perceptron-regression.ipynb)
  - [04-multilayer-perceptron-fitting.ipynb](https://github.com/muriloboratto/AI-university-assignments/blob/master/2-Neural-Network/04-multilayer-perceptron-fitting.ipynb)
  - [05-multilayer-assessment.ipynb](https://github.com/muriloboratto/AI-university-assignments/blob/master/2-Neural-Network/05-multilayer-perceptron-classification-regression-assessment.ipynb)
- [Bio-inspired]
  - [01-bio-inspired-introduction.ipynb](https://github.com/muriloboratto/)
  - [02-bio-inspired-genetic-algorithm.ipynb](https://github.com/muriloboratto/)
  - [03-bio-inspired-ant-colony-algorithm.ipynb](https://github.com/muriloboratto/)
  - [04-bio-inspired-particle-swarm-optimization.ipynb](https://github.com/muriloboratto/)
  - [05-bio-inspired-intelSigOpt.ipynb](https://github.com/muriloboratto/)
- [HPC Simulations]
  - [01-hpc-simulations](https://github.com/muriloboratto/)
  - [02-hpc-simulations](https://github.com/muriloboratto/)
  - [03-hpc-simulations](https://github.com/muriloboratto/)
  - [04-hpc-simulations](https://github.com/muriloboratto/) 
---

## Known Issues:

### Licenses:

Code samples are licensed under the MIT license. See [License.txt](https://github.com/oneapi-src/oneAPI-samples/blob/master/License.txt) for details.

## References:

[1] Rosenblatt, F. (1958). **The perceptron: A probabilistic model for information storage and organization in the brain. Psychological Review**, 65(6), 386-408.

[2] LUNGER, G. F. (2009). **Artificial Intelligence: Structures and Strategies for Complex Problem Solving**. Addison-Wesley, 2009.

[3] GOODFELLOW, I., BENGIO, Y., COURVILLE, A. (2016).  **Deep Learning**. MIT Press. Available at [https://www.deeplearningbook.org](https://www.deeplearningbook.org).

[4] RUSSELL, S.,  NORVIG, P. (2010)  **Artificial Intelligence: A Modern Approach**. Prentice Hall.

[5] SUTTON, R. S.,  BARTO, A. G. (2018).  **Reinforcement Learning: An Introduction**.  MIT Press.

[6] CRAWFORD, K. (2021).  **Atlas of AI**. Yale University Press: New Haven and London.


---

[Murilo Boratto](http://lattes.cnpq.br/9222855062709254) <br/>
Researcher at the Supercomputing Center for Industrial Innovation SENAI-CIMATEC [CS2I](https://www.senaicimatec.com.br/) <br/>


