# Senior-Year_Studenst

#deploy.yml
#name: Deploy SQL Scripts to SQL Server

# Triggers the workflow on push to main or development branches
#on:
  push:
    branches:
      - main
      - development

#jobs:
  #deploy:
    runs-on: windows-latest

    # Define different environments (development, production)
    environment:
      name: ${{ github.ref == 'refs/heads/main' && 'production' || 'development' }}

    steps:
      # Step 1: Checkout the repository to get the SQL scripts
      - name: Checkout repository
        uses: actions/checkout@v2

      # Step 2: Install the SQL Server tools like sqlcmd
      - name: Install SQL Server module and tools
        run: |
          Install-Module -Name SqlServer -Force -SkipPublisherCheck
          Import-Module SqlServer

      # Step 3: Run the CreateTables.sql script
      - name: Run CreateTables.sql script
        run: |
          sqlcmd -S ${{ secrets.SQL_SERVER }} -U ${{ secrets.SQL_USER }} -P ${{ secrets.SQL_PASSWORD }} -i ./scripts/CreateTables.sql

      # Step 4: Run the InsertData.sql script
      - name: Run InsertData.sql script
        run: |
          sqlcmd -S ${{ secrets.SQL_SERVER }} -U ${{ secrets.SQL_USER }} -P ${{ secrets.SQL_PASSWORD }} -i ./scripts/InsertData.sql
