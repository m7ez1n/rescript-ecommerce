open Render

@react.component
let make = () => {
  <Button onClick={_ => Js.log("clicked")}> {`other`->s} </Button>
}
