@react.component
let make = () => {
  <>
    <Header />
    <div
      className="container mx-auto grid sm:grid-cols-1 md:grid-cols-2 lg:grid-cols-3 xl:grid-cols-4 pt-6 gap-8">
      <Product
        name="Product Name"
        price="$340"
        image="https://pixahive.com/wp-content/uploads/2020/10/Gym-shoes-153180-pixahive.jpg"
        quantity={2}
      />
    </div>
  </>
}
