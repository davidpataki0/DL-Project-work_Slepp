# DL-Project-work_Slepp
Image generation with diffusion models.

- Team name: **Slepp**

- Team members' names and Neptun codes: 
  - **Kányádi Richárd (EPI047)**
  - **Pataki Dávid (EWXZA3)**
  - **Tasi Zsombor (T0D8GA)**
  
## Project description:
  Implement and train unconditional diffusion models, such as DDPM (Denoising Diffusion Probabilistic Model) or DDIM (Denoising Diffusion Implicit Model) for generating realistic images. Evaluate the capabilities of the models on two different datasets, such as CelebA and Flowers102.

## Functions of the files in the repository:

  | File/Folder                   | Description                                                                 |
|-------------------------------|-----------------------------------------------------------------------------|
| `Dockerfile`                   | Defines the Docker image with necessary dependencies, including installing gdown and the necessary datasets. |
| `requirements.txt`             | Lists the Python packages and dependencies needed to run the project.       |
| `Project-work_Slepp.ipynb`       | Our main file, where we can preprocess our datas. |

## Related works (papers, GitHub repositories, blog posts, etc.):
  ### Related GitHub repositories:
    - https://huggingface.co/blog/annotated-diffusion
    - https://github.com/huggingface/diffusers
    - https://keras.io/examples/generative/ddim/

  ### Related papers:
    - https://arxiv.org/abs/2006.11239
    - https://arxiv.org/abs/2010.02502


## How to run it (building and running the container, running your solution within the container):

### Step 1:  **Build the Docker image:**
  From the project root directory, run the following command to build the Docker image:
   ```bash
   docker build -t your-image-name .
   ```
### Step 2: **Run the Docker container**
  ```bash
  docker run -p 8888:8888 your-image-name
  ```
### Step 3: **Start the notebook**
  Copy and paste this URL:
```bash
http://127.0.0.1:8888/tree?token=
```
(with the right token copied from the terminal window)

`After these steps you can start preprocessing the datas.`
