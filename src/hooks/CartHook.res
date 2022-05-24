type product = {
  name: string,
  price: string,
  image: string,
  quantity: int,
  id: string,
}
type action = Add(product) | Remove(string)
type state = {productsOnCart: array<product>}

let reducer = (state, action) => {
  switch action {
  | Add(content) =>
    let newProducts = state.productsOnCart->Js.Array2.concat([content])
    {productsOnCart: newProducts}
  | Remove(id) =>
    let products = state.productsOnCart->Js.Array2.filter(product => product.id !== id)
    {productsOnCart: products}
  }
}

let initialProductOnCart: array<product> = []

let useCart = () => {
  let (state, dispatch) = React.useReducer(reducer, {productsOnCart: initialProductOnCart})
  Js.log(state)
  (state, dispatch)
}
