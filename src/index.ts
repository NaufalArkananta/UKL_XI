import Express from 'express'
import UserRoute from "./routes/userRoute"
import ItemRoute from "./routes/itemRoute"
import BorrowRoute from "./routes/borrowRoute"

const app = Express()

app.use(Express.json())

app.use(`/api`, UserRoute)
app.use(`/api`, ItemRoute)
app.use(`/api`, BorrowRoute)

const PORT = process.env.PORT || 3000
app.listen(PORT, () => {
    console.log(`Server is running on port ${PORT}`)
})