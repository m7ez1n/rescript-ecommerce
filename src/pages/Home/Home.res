@react.component
let make = () => {
  <>
    <Header />
    <div className="min-h-screen flex flex-col justify-center">
      <Product
        name="Product Name"
        price="$340"
        image="https://pixahive.com/wp-content/uploads/2020/10/Gym-shoes-153180-pixahive.jpg"
        quantity={2}
      />
    </div>
  </>
}
