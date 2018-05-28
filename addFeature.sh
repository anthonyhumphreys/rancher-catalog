
mkdir src/features/$1
mkdir src/features/$1/logic
touch src/features/$1/container.js
touch src/features/$1/logic/actions.js

echo "import React, { Component } from 'react';\r\nimport { bindActionCreators } from 'redux';\r\nimport { connect } from 'react-redux';\r\n\r\nclass $1 extends Component {\r\n  constructor(props) {\r\n    super(props);\r\n  }\r\n\r\n  render() {\r\n    return null;\r\n  }\r\n}\r\n\r\nconst mapStateToProps = (state) => (\r\n  {\r\n    isLoading: state.auth.isLoading,\r\n    auth: state.auth,\r\n  });\r\n\r\nconst mapDispatchToProps = dispatch => ({\r\n  actions: bindActionCreators({\r\n  }, dispatch),\r\n});\r\n\r\nexport default connect(mapStateToProps, mapDispatchToProps)($1);\r\n\r\n$1.propTypes = {}\r\n" >> src/features/$1/container.js
echo "import * as types from 'common/constants/actionTypes';" >> src/features/$1/logic/actions.js