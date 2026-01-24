# 🚀 Node-RED Lead Generator (Google Business Data)

A **Node-RED–based automation tool** that allows users to search Google business listings (e.g., *"Dental clinics in Nagpur"*), extract structured business data, and download the results as a CSV file—all through a clean, simple web UI.

This project is designed as a **lead-generation automation tool** and is containerized with **Docker** for seamless deployment on **Render**.

---

## ✨ Features

- 🔍 **Smart Search:** Find businesses by keyword and location (e.g., “Dental clinics in Nagpur”).
- 📊 **Data Extraction:** Automatically scrapes Business Name, Phone, Address, Rating, Review Count, and Website.
- 📁 **Instant Export:** Download search results as a **CSV file** immediately.
- 🧠 **Low-Code Logic:** Built entirely using visual Node-RED workflows.
- 🌐 **Public Dashboard:** Accessible via a browser with no login required for the UI.
- ⚙️ **Cloud Ready:** Fully Dockerized and deployed on Render.

---

## 🖥 Live Links

### 🔹 User Dashboard (Main App)
[https://node-red-lead-generator.onrender.com/ui](https://node-red-lead-generator.onrender.com/ui)

### 🔹 Node-RED Workflow (Editor View)
[https://node-red-lead-generator.onrender.com/#flow/17918d4961f35716](https://node-red-lead-generator.onrender.com/#flow/17918d4961f35716)

---

## 🧰 Tech Stack

- **Node-RED** – Automation & workflow engine
- **node-red-dashboard** – UI components for the web interface
- **Google Search API / Serper API** – Business data source
- **Docker** – Containerization for consistent deployment
- **Render** – Cloud hosting platform
- **GitHub** – Version control & CI/CD

---

## 🗂 Project Structure

```text
node-red-lead-generator/
│
├── data/
│   ├── flows.json        # Complete Node-RED workflow (source of truth)
│   └── flows_cred.json   # Encrypted credentials (optional)
│
├── Dockerfile            # Docker configuration for Render
├── settings.js           # Node-RED settings & security config
├── package.json          # Project metadata & dependencies
├── .gitignore            # Files to exclude from Git
└── README.md             # Project documentation

⚙️ How It Works
1.Input: User enters a search query in the dashboard.
2.Request: Node-RED sends the query to the Google Business/Serper API.
3.Processing: Data is extracted, normalized, and formatted.
4.Conversion: The tool converts JSON results into a CSV structure.
5.Output: User downloads the CSV file instantly.

[!IMPORTANT] Free Hosting Note: Since Render's free tier lacks persistent disk storage, CSV files are generated on-demand. To save workflow changes permanently, edit locally, export the flows.json, and commit it to GitHub.

🛡 Security Notice
The Node-RED editor is currently public for demonstration. For production use, it is highly recommended to:

1.Add editor authentication in settings.js.
2.Restrict editor access to specific IPs.
3.Expose only the /ui dashboard to the end-users.

🚀 Use Cases
1.Lead Generation: Build targeted lists for local business outreach.
2.Market Research: Analyze competitor ratings and density in specific cities.
3.Freelance Tools: Create automated solutions for niche clients (e.g., Dental clinics, NGOs).

📌 Future Improvements
[ ] Rating-based filters (e.g., only show businesses with < 4 stars).
[ ] "No Website" filter to identify clients needing web development.
[ ] Pagination support to fetch 100+ results per search.
[ ] Database Integration to store and manage leads over time.
[ ] Multi-user Authentication for a SaaS-ready dashboard.


👤 Author
Soumya Wasule Built with Node-RED & deployed using Docker on Render.

⭐ If you find this project useful, feel free to star the repository! 
