const url = "news.xml";

fetch(url)
  .then((response) => response.text())
  .then((data) => {
    const parser = new DOMParser();
    const xml = parser.parseFromString(data, "application/xml");
    const articles = xml.getElementsByTagName("article");

    let html = "";

    for (let i = 0; i < articles.length; i++) {
      const title = articles[i].getElementsByTagName("title")[0].textContent;
      const author = articles[i].getElementsByTagName("author")[0].textContent;
      const date = articles[i].getElementsByTagName("date")[0].textContent;
      const content =
        articles[i].getElementsByTagName("content")[0].textContent;

      html += `
            <div class="card" style="margin-bottom: 20px;border: 1px solid #ccc;">
              <div class="card-body">
                <h2 class="card-title">${title}</h2>
                <p class="card-text"><strong>Author:</strong> ${author}</p>
                <p class="card-text"><strong>Date:</strong> ${date}</p>
                <p class="card-text"><strong>Content:</strong> ${content}</p>
              </div>
            </div>
          `;
    }

    document.getElementById("news").innerHTML = html;
  })
  .catch((error) => console.log(error));
