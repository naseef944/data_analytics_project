## Model Checkpoints

This repository contains model checkpoints saved during training. These checkpoints are in the `.h5` file format and include:

- **model_epoch_15_val_loss_0.00.h5**: Model weights saved at epoch 15 with the best validation loss of 0.00.

### How to Use Checkpoints

To load a model from a checkpoint, use the following code:

```python
from tensorflow.keras.models import load_model

# Load the model from a checkpoint file
model = load_model('results/model_checkpoints/model_epoch_05_val_loss_0.25.h5')

