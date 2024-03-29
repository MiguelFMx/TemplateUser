﻿document.querySelectorAll(".drop-zone__input").forEach(inputElement => {

    const dropZoneElement = inputElement.closest(".drop-zone");

    dropZoneElement.addEventListener("click", e => {
        inputElement.click();
    });

    inputElement.addEventListener("change", e => {
        if (inputElement.files.length) {
            if (inputElement.files[0].type == "application/pdf") {
                updateThumbnail(dropZoneElement, inputElement.files[0]);
                $('#MainContent_lblErr').html("");

            } else {
                $('#MainContent_lblErr').html("Solo se admiten documentos en formato pdf");
            }
        }
    });

    dropZoneElement.addEventListener("dragover", e => {
        e.preventDefault();
        dropZoneElement.classList.add("drop-zone--over");
    });

    ["dragleave", "dragend"].forEach(type => {
        dropZoneElement.addEventListener(type, e => {
            dropZoneElement.classList.remove("drop-zone--over");
        });
    });

    dropZoneElement.addEventListener("drop", e => {
        e.preventDefault();
        if (e.dataTransfer.files.length == 1) {
            if (e.dataTransfer.files[0].type == "application/pdf") {
                inputElement.files = e.dataTransfer.files;
                updateThumbnail(dropZoneElement, e.dataTransfer.files[0]);
                $('#MainContent_lblErr').html("");

            } else {
                $('#MainContent_lblErr').html("Solo se admiten documentos en formato pdf");
                inputElement.val("");
            }
            
        } else {
            $('#MainContent_lblErr').html("Solo puede subir un archivo");
        }

        dropZoneElement.classList.remove("drop-zone--over");

    });

});

/**
 * /
 * @param {HTMLElement} dropZoneElement
 * @param {File} file
 */

function updateThumbnail(dropZoneElement, file) {
    let thumbnailElement = dropZoneElement.querySelector(".drop-zone__thumb");
    console.log(file);
    if (dropZoneElement.querySelector(".drop-zone__prompt")) {
        dropZoneElement.querySelector(".drop-zone__prompt").remove();
    }
    if (!thumbnailElement) {
        thumbnailElement = document.createElement("div");
        thumbnailElement.classList.add("drop-zone__thumb");
        dropZoneElement.appendChild(thumbnailElement);
    }
    thumbnailElement.dataset.label = file.name;
}



