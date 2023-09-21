# NEST Basic 

## Database setup
1. Installing the Prisma CLI as a development dependency

    `npm install prisma --save-dev`
2. Create your initial Prisma setup using the init command of the Prisma CLI:

   `npx prisma init`
3. Add the schema in `schema.prisma` file.
4. Run `npx prisma migrate dev --name init`. (Also, run `prisma format` to format the content)
