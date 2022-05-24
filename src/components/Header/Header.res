open CartHook

@react.component
let make = (~products: array<product>) => {
  let (visible, setVisible) = React.useState(_ => false)

  let onClick = evt => {
    ReactEvent.Mouse.preventDefault(evt)
    setVisible(prev => !prev)
  }

  <>
    <div className="w-full py-8 bg-blue-500 flex justify-end items-center">
      <button
        onClick
        className="absolute mr-4 right-2 top-2 bg-white rounded-full p-2 cursor-pointer group">
        <ShopIcon />
      </button>
    </div>
    {if visible {
      <Cart onClick products />
    } else {
      <> </>
    }}
  </>
}
