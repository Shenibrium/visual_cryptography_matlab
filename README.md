

# Visual Cryptography with MATLAB 🔐

> **This project was developed by Ömer Hamza Ataç and Eyyub Taşdemir under the supervision of Şehit Hüseyin Gültekin Bilim ve Sanat Merkezi (BİLSEM).**

This project is an image encryption (visual cryptography) application with a graphical user interface developed using MATLAB. It primarily uses **Affine Transformation** and **Matrix Rotation** methods to encrypt images and restore encrypted images back to their original state.

## 🌟 Features

  * **User-Friendly Interface (GUI):** A practical control panel design where you can compare the original and processed images side-by-side.
  * **Channel-Based Affine Encryption (ax+b):** Ability to set separate **A** and **B** key values for the Red (R), Green (G), and Blue (B) color channels. This allows each color layer to be encrypted with a different linear transformation.
  * **Matrix Rotation:** Ability to enter specific rotation angles/values for each color channel (R, G, B) to increase encryption complexity.
  * **Two-Way Processing:** The ability to encrypt the loaded original image according to the given parameters ("Şifrele") and decrypt the image back when the keys are known ("Deşifre Et").

## 📂 Project Structure

| File / Folder | Description |
| :--- | :--- |
| `Goruntu_Sifreleme.m` | The main code file running in the background of the GUI, triggering the interface buttons and encryption/decryption functions. |
| `Goruntu_Sifreleme.fig` | The MATLAB interface design file. |
| `Affine_Resim/` | The source folder containing the algorithms for affine transformation encryption/decryption and matrix rotation operations. |
| `Lenna.png` | The original sample image used for encryption tests. |
| `crpt.png` | A sample complex (encrypted) image obtained as a result of the encryption process. |
| `Rapor.pdf` | The project report detailing the theoretical background, the cryptographic formulas used, and the working logic. |
| `requeriments.txt` | A file containing information about the tools required for the project to run. |

## 🚀 Installation and Usage

1.  **Clone the Repository:**

<!-- end list -->

```bash
git clone https://github.com/Shenibrium/visual_cryptography_matlab.git
```

2.  **Start MATLAB:** Open MATLAB and navigate to the directory where the project is located from the *Current Folder* section.

3.  **Run the Application:** Start the interface by typing the following command in the Command Window:

<!-- end list -->

```matlab
Goruntu_Sifreleme
```

4.  **Usage Steps:**

<!-- end list -->

  * **Load Image (Görüntü Yükle):** Select the image you want to test.
  * **Set Parameters:** Enter the *Key A (A Anahtarı)*, *Key B (B Anahtarı)*, and *Matrix Rotation (Matris Döndürme)* values (e.g., A=11, B=12, Rotation=40) for the Red, Green, and Blue channels via the Control Panel.
  * **Encrypt (Şifrele):** Click the button to generate the processed (encrypted) image on the right screen.
  * **Decrypt (Deşifre Et):** Use the decrypt button with the exact same parameters to restore the encrypted image to its original state.

## 📜 License

This project is licensed under the **MIT License**. You can check the `LICENSE` file for more information.
