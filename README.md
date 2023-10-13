# SMACD 2021 B4.4

Supplementary material to the Paper and Presentation B4.4
[Machine Learning Based Procedural Circuit Sizing and DC Operating Point Prediction]()
at [SMACD](https://smacd-conference.org) 2021.

## Dependencies

**Note**: For training models
[precept](https://github.com/electronics-and-drives/precept) has to be
installed manually.

For everything else simply run

```
$ pip install -r ./requirements.txt
```

in this repository.

## Usage

Make sure [Jupyter Lab](https://jupyter.org/) is installed, then navigate into
the `notebooks` folder and start jupyter.

```bash
$ cd notebooks

$ jupyter lab
```

### Transistor Simulation Models

The data for training the models is obtained by characterizing 130nm, 90nm and 45nm
[PTM](http://ptm.asu.edu/) devices, as seen in
[pyrdict](https://github.com/AugustUnderground/pyrdict).

For convenience, you can run

```bash
$ ./ptm-setup.sh
```

which will create a folder called `./lib` containing these 3 libraries.

### Training Models

Sizing a circuit requires machine learning models trained for mapping
electrical characteristics of Primitive Devices to corresponding geometric
values. For this example, trained models are given in the `models` directory of
this repository. These models were trained (as shown in
`notebooks/model_training.ipynb`) with the
[precept](https://github.com/electronics-and-drives/precept) library on the
data generated in the previous section.

### Circuit Sizing

#### Symmetrical Amplifier

See `notebooks/sym_sizing.ipynb`.

#### Miller Operational Amplifier

See `notebooks/moa_sizing.ipynb`.

## Citing

```
@inproceedings{ edlab2021b44
              , author={Y. {Uhlmann} and M. {Essich} and M. {Schweikardt} and J. {Scheible} and C. {Curio}}
              , title={Machine Learning Based Procedural Circuit Sizing and DC Operating Point Prediction}
              , booktitle={2021 17th International Conference on Synthesis, Modeling, Analysis and Simulation Methods and Applications to Circuit Design (SMACD)}
              , year={2021}
              , volume={17},
              , pages={}
              , }
```

## License

```
Copyright © 2021 Yannick Uhlmann, Electronics & Drives

Permission is hereby granted, free of charge, to any person obtaining a copy of
this software and associated documentation files (the “Software”), to deal in
the Software without restriction, including without limitation the rights to
use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies
of the Software, and to permit persons to whom the Software is furnished to do
so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED “AS IS”, WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.
```
