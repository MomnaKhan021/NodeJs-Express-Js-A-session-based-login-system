// script.js
function login() {
    // You can implement authentication logic here
    // After successful login, navigate to the upload page
    window.location.href = 'file.html';
}

function uploadFile() {
    // You can implement file upload logic here
    // After successful upload, enable the generate button
    document.getElementById('generateButton').removeAttribute('disabled');
    const sample1FileInput = document.getElementById('sample1File');
    const displayButton = document.getElementById('displayButton');
    const dataDisplay = document.getElementById('dataDisplay');

    displayButton.addEventListener('click', () => {
        const file = sample1FileInput.files[0];
        if (file) {
            const reader = new FileReader();

            reader.onload = function (event) {
                const csvContent = event.target.result;
                const lines = csvContent.split('\n');
                let tableHTML = '<table>';

                lines.forEach(line => {
                    const cells = line.split(',');
                    tableHTML += '<tr>';
                    cells.forEach(cell => {
                        tableHTML += `<td>${cell}</td>`;
                    });
                    tableHTML += '</tr>';
                });

                tableHTML += '</table>';
                dataDisplay.innerHTML = tableHTML;
            };

            reader.readAsText(file);
        }
    });
}

function generateAndDownload() {
    // You can implement logic to generate and download the sample 2 file here
    const generateButton = document.getElementById('generateButton');
  
    generateButton.addEventListener('click', () => {
      const sample2FileURL = '/assets/sample file 2.csv';
  
      const a = document.createElement('a');
      a.href = sample2FileURL;
      a.download = 'sample_file_2.csv';
      a.click();
    });
}
