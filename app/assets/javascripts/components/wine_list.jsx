class WineList extends React.Component{
  constructor(props) {
    super(props)

    this.state = {
      query: ""
    }
  }

  render() {
    return <div>
      <input type="search" onChange={this.wineFilter.bind(this)} />
      <table>
      <thead>
        <tr>
          <th>Name</th>
          <th>Varietal</th>
          <th>Year</th>
          <th>Rank</th>
          <th>Cost</th>
        </tr>
      </thead>
      <tbody>
      {
        this.props.wines.filter((wine) => (
          wine.name.toLowerCase().indexOf(this.state.query.toLowerCase()) > -1
        )).map(function(wine){
          return <tr key={wine.id}>
          <td>{wine.name}</td>
          <td>{wine.varietal}</td>
          <td>{wine.vintage}</td>
          <td>{wine.rank}</td>
          <td>{wine.cost}</td>
          </tr>
        })
      }
      </tbody>
      </table>
    </div>
  }

  wineFilter(event){
    this.setState({query: event.target.value})
  }
}
