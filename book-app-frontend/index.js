let selcetedUserId = 0;


const userDiv = document.getElementsByClassName("user-dropdown")
const userSelect = document.querySelector('.user-select')
const bookList = document.querySelector('.book-list')
const divForm = document.querySelector('.form')
console.log(divForm);


///---AddEventListener to dropDown menu to get 
userSelect.addEventListener('change', function(event) {
    selcetedUserId = event.target.value
    getUser()
})


getBooks = (books) => {
    bookList.innerHTML = ''
    for (book of books) {
        console.log(book);
        if (book.user_id === parseInt(selcetedUserId)) {
            bookList.innerHTML +=
                `  <div class='book-card'>
                    <h3>Book title: ${book.title}</h3>
                    <h4>Author: ${book.author}</h4> 
                    <button class='edit-btn'>Update Book</button> 
                    <li>Genre: ${book.genre}</li> 
                    </div>`
        }

        divForm.innerHTML = ` 
        <form class ='add-book'> BookTitle: <input type='text' name='title'</input> <br>
        Author: <input type='text' name='author'></input> 
        Image: <input type='text' name='image'></input> 
        Genre: <input type='text' name='genre'></input> <input type='submit' value='Add Book'></input>
        </form>`
    }
}

///---AddEventListener to Update Books---///
bookList.addEventListener('click', function(event) {
    if (event.target.className === 'edit-btn') {
        console.log(event);

    }
})

///---AddEventListener to Add Books---/////
divForm.addEventListener('submit', function(event) {
    event.preventDefault()
    if (event.target.className === 'add-book') {
        fetch('http://localhost:3000/books', {
                method: 'POST',
                headers: {
                    'Content-Type': 'application/json',
                    'Accept': 'application/json'
                },
                body: JSON.stringify({
                    'title': event.target.title.value,
                    'author': event.target.author.value,
                    'genre': event.target.genre.value,
                    'img': event.target.image.value,
                    'user_id': selcetedUserId
                })

            })
            .then(resp => resp.json())
            .then(getBooks)
    }
})


getUser = () => {
    fetch('http://localhost:3000/books')
        .then(resp => resp.json())
        .then(getBooks)
}


displayUser = (users) => {
    for (user of users) {
        const userName = user.name
        userSelect.innerHTML += `
            <option value="${user.id}">${userName}</option>
            `

    }
}

fetch('http://localhost:3000/users')
    .then(resp => resp.json())
    .then(displayUser)