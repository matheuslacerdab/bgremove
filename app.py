from rembg import remove
from PIL import Image
import streamlit as st

st.write(""" # BG Remove """)

input_path = st.file_uploader('Selecione uma imagem: ', type=['png', 'jpg'])

if input_path:
    st.image(input_path)

    input = Image.open(input_path)
    output = remove(input)

    st.image(output)