# Jupyter Notebook   

Docker Image built for TensorFlow. Details of image are here: https://jupyter-docker-stacks.readthedocs.io/en/latest/index.html  

Image also includes:  
- Tropycal: https://tropycal.github.io/tropycal/
- Cartopy: https://scitools.org.uk/cartopy/docs/latest/

User Steps  
1. Install Docker: https://docs.docker.com/engine/install/
2. Install Docker-Compose (Linux): https://docs.docker.com/compose/install/
3. Download __THIS__ repository.
4. Navigate to directory wher __THIS__ repository is saved.
5. In command line and run the following

```bash
$ docker-compose up --build
```  

6. Wait for loading to finish.
7. Navigation to localhost:8888
8. Enter password 'easy'. Or change JUPYTER_TOKEN in docker-compose.yml
9. Enjoy  


TODO  
NOAA vessel AIS data at 1 minute intervals - how to tell the number of vessels transiting near a project site???????????  
https://marinecadastre.gov/ais/

NTSB Reports - how to efficiently search????  
https://www.ntsb.gov/investigations/accidentreports/pages/marine.aspx


Design Patterns
https://python-patterns.guide/  
https://sourcemaking.com/design_patterns/  
