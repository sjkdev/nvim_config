Cheatsheet
I will list the current supported snippets below and their implementation. I recommend checking out the full source files in the UltiSnips folder to see the full tabstop locations. The examples below will use $TABSTOP or $NAME to indicate that there is a tabstop or a tabbable/replacable variable. Finally, if you see $CFN or $CFN_, it will be the Current File Name (the trailing underscore will not be included, it is just added to show separation when something else follows it).

PropTypes
Shortcut	Expands To
pt.a	React.PropTypes.array
pt.ar	React.PropTypes.array.isRequired
pt.b	React.PropTypes.bool
pt.br	React.PropTypes.bool.isRequired
pt.f	React.PropTypes.func
pt.fr	React.PropTypes.func.isRequired
pt.nu	React.PropTypes.number
pt.nur	React.PropTypes.number.isRequired
pt.o	React.PropTypes.object
pt.or	React.PropTypes.object.isRequired
pt.s	React.PropTypes.string
pt.sr	React.PropTypes.string.isRequired
pt.no	React.PropTypes.node
pt.nor	React.PropTypes.node.isRequired
pt.e	React.PropTypes.element
pt.er	React.PropTypes.element.isRequired
pt.ao	React.PropTypes.arrayOf
pt.aor	React.PropTypes.arrayOf.isRequired
pt.io	React.PropTypes.instanceOf
pt.ior	React.PropTypes.instanceOf.isRequired
pt.oo	React.PropTypes.objectOf
pt.oor	React.PropTypes.objectOf.isRequired
pt.sh	React.PropTypes.shape
pt.shr	React.PropTypes.shape.isRequired
Class Components (Javascript)
React Class Export
rce ->

import React, { Component } from "react";

export default class $CFN extends Component {
  constuctor(props) {
    super(props);

    this.state = {};
  }

  render() {
    return null;
  }
}
React Class Component
rcc ->

class $CFN extends Component {
  render() {
    return null;
  }
}
React Class Constructor
rcon ->

constructor(props) {
  super(props);

  this.state = {};
}
Static PropTypes
sdp ->

static propTypes = {
  $TABSTOP
}
Static Default Props
sdp ->

static defaultProps = {
  $TABSTOP
}
React Class Function (arrow bound class function)
rcf ->

$TABSTOP = $TABSTOP => {
  $TABSTOP;
};
Function Components (Javascript)
Function Component Export
fce ->

import React from "react";

const $CFN = props => {
  return null;
};

export default $CFN;
Simple Function Component Export
sfce ->

import React from "react";

const $CFN = () => {
  return null;
};

export default $CFN;
Function Component
fc ->

const $TABSTOP = () => {
  return null;
};
Component PropTypes
cpt ->

$CFN.propTypes = {
  $TABSTOP,
};
Component Default Props
cdp ->

$CFN.defaultProps = {
  $TABSTOP,
};
React Lifecycle (Javascript)
Get Derived State from props
gds ->

static getDerivedStateFromProps(nextProps, prevState) {
  return null;
}
Get Derived state from Error
gde ->

static getDerivedStateFromError(error) {
  return null;
}
Component Did Mount
cdm ->

componentDidMount() {
  $TABSTOP
}
Should Component Update
scu ->

shouldComponentUpdate(nextProps, nextState) {
  $TABSTOP
}
Get Snapshot Before Update
gsbu ->

getSnapshotBeforeUpdate(prevProps, prevState) {
  $TABSTOP
}
Component Did Update
cdu ->

componentDidUpdate(prevProps, prevState, $SNAPSHOT) {
  $TABSTOP
}
Component Did Catch
cdc ->

componentDidCatch(error, info) {
  $TABSTOP
}
Component Will Unmount
cwum ->

componentWillUnmount() {
  $TABSTOP
}
Hooks and Effects (Javascript)
useState
useS ->

const [$STATE, set$STATE] = useState($TABSTOP);
useEffect
useE ->

useEffect(() => {
  $TABSTOP
}$TABSTOP);
useContext
useC ->

const context = useContext($TABSTOP);
or inline:

return useC ->

return useContext($TABSTOP);
useReducer
useRed ->

const [$STATE, $DISPATCH] = useReducer($REDUCER, $NULL);
useCallback
useCB ->

const $CALLBACK = useCallback(($TABSTOP) => {
  $TABSTOP
}, [$TABSTOP]);
useMemo
useM ->

const $MEMOIZED = useMemo(() => {
  $TABSTOP
}, [$TABSTOP]);
useRef
useR ->

const $REF = useRef($TABSTOP);
useImperitiveHandle
useI ->

useImperitiveHandle($REF, () => ({
  $TABSTOP,
}), [$TABSTOP]);
useLayoutEffect
useL ->

useLayoutEffect(() => {
  $TABSTOP;
});
useDebugValue
useD ->

useDebugValue($NULL);
forwardRef
fref ->

export default forwardRef((props, ref) => (
  <$CFN {...props} forwardedRef={ref} />
));
Or inline:

export const Forwarded = fref ->

export const Forwarded = forwardRef((props, ref) => (
  <$CFN {...props} forwardedRef={ref} />
));
General Redux (Javascript)
@connect (annotation)
@c ->

@connect($STATE)
connect (function)
cf ->

connect($STATE)($CFN);
@connectAdvanced (annotation)
@ca ->

@connectAdvanced($DISPATCH => {
  $TABSTOP

  return ($STATE, $PROPS) => {
    $TABSTOP
    return {};
  };
})
connectAdvanced (function)
ca ->

connectAdvanced($DISPATCH => {
  $TABSTOP;

  return ($STATE, $PROPS) => {
    $TABSTOP;
    return {};
  };
})($CFN);
bindActionCreators
bac ->

const $ACTIONS = bindActionCreators({ $TABSTOP }, dispatch);
Or inline:

const myActions = bac ->

const myActions = bindActionCreators({ $TABSTOP }, dispatch);
Class Components (Typescript)
React Class Export
rce ->

import React, { Component } from "react";

export default class $CFN extends Component {
  public render() {
    return null;
  }
}
React Class Export with Prop interface
rcep ->

import React, { Component } from "react";

export interface $CFN_Props {}

export default class $CFN extends Component<$CFN_Props> {
  public render() {
    return null;
  }
}
React Class Export with Props and State
rceps ->

import React, { Component } from "react";

export interface $CFN_Props {}

export interface $CFN_State {}

export default class $CFN extends Component<$CFN_Props, $CFN_State> {
  constructor(props: $CFN_Props) {
    super(props);

    this.state = {};
  }

  public render() {
    return null;
  }
}
React Class Component
rcc ->

class $CFN extends Component {
  public render() {
    return null;
  }
}
React Class Constructor
rcon ->

constructor(props: $CFN_Props) {
  super(props);

  this.state = {};
}
Static PropTypes
sdp ->

public static propTypes = {
  $TABSTOP
}
Static Default Props
sdp ->

public static defaultProps = {
  $TABSTOP
}
Static Default Props Typed
sdpt ->

public static defaultProps: DefaultProps = {
  $TABSTOP
}
React Class Function (arrow bound class function)
rcf ->

$TABSTOP = $TABSTOP => {
  $TABSTOP;
};
Function Components (Typescript)
Function Component Export
fce ->

import React, { FC } from "react";

export interface $CFN_Props {}

const $CFN: FC<$CFN_Props> = props => {
  return null;
};

export default $CFN;
Simple Function Component Export
sfce ->

import React, { FC } from "react";

const $CFN: FC = () => {
  return null;
};

export default $CFN;
Function Component
fc ->

const $TABSTOP: FC = props => {
  return null;
};
Component PropTypes
cpt ->

$CFN.propTypes = {
  $TABSTOP,
};
Component Default Props
cdp ->

$CFN.defaultProps = {
  $TABSTOP,
};
Component Default Props Typed
cdpt ->

const defaultProps: DefaultProps = {
  $TABSTOP,
};

$CFN.defaultProps = defaultProps;
React Lifecycle (Typescript)
Get Derived State from props
gds ->

static getDerivedStateFromProps(nextProps: $CFN_Props, prevState: $CFN_State) {
  return null;
}
Get Derived state from Error
gde ->

static getDerivedStateFromError(error: Error) {
  return null;
}
Component Did Mount
cdm ->

componentDidMount() {
  $TABSTOP
}
Should Component Update
scu ->

shouldComponentUpdate(nextProps: $CFN_Props, nextState: $CFN_State) {
  $TABSTOP
}
Get Snapshot Before Update
gsbu ->

getSnapshotBeforeUpdate(prevProps: $CFN_Props, prevState: $CFN_State) {
  $TABSTOP
}
Component Did Update
cdu ->

componentDidUpdate(prevProps: $CFN_Props, prevState: $CFN_State, $SNAPSHOT) {
  $TABSTOP
}
Component Did Catch
cdc ->

componentDidCatch(error: Error, info: ErrorInfo) {
  $TABSTOP
}
Component Will Unmount
cwum ->

componentWillUnmount() {
  $TABSTOP
}
React Event Types (Typescript Only)
Shortcut	Expands to
r.me	React.MouseEvent
r.te	React.TouchEvent
r.ke	React.KeyboardEvent
r.ce	React.ChangeEvent
r.fe	React.FormEvent
r.fo	React.FocusEvent
r.meh	React.MouseEventHandler
r.teh	React.TouchEventHandler
r.keh	React.KeyboardEventHandler
r.ceh	React.ChangeEventHandler
r.feh	React.FormEventHandler
r.foh	React.FocusEventHandler
Hooks and Effects (Typescript)
useState
useS ->

const [$STATE, set$STATE] = useState$TABSTOP($TABSTOP);
useEffect
useE ->

useEffect(() => {
  $TABSTOP
}$TABSTOP);
useContext
useC ->

const context = useContext$TABSTOP($TABSTOP);
or inline:

return useC ->

return useContext$TABSTOP($TABSTOP);
useReducer
useRed ->

const [$STATE, $DISPATCH] = useReducer<typeof $REDUCER>($REDUCER, $NULL);
useReducer Untyped
useRedUT ->

const [$STATE, $DISPATCH] = useReducer($REDUCER, $NULL);
useCallback
useCB ->

const $CALLBACK = useCallback(($TABSTOP) => {
  $TABSTOP
}, [$TABSTOP]);
useMemo
useM ->

const $MEMOIZED = useMemo(() => {
  $TABSTOP
}, [$TABSTOP]);
useRef
useR ->

const $REF = useRef$TABSTOP(TABSTOP);
useImperitiveHandle
useI ->

useImperitiveHandle($REF, () => ({
  $TABSTOP,
}), [$TABSTOP]);
useLayoutEffect
useL ->

useLayoutEffect(() => {
  $TABSTOP;
});
useDebugValue
useD ->

useDebugValue($NULL);
forwardRef
fref ->

export default forwardRef<$TABSTOPElement, $CFN_Props>((props, ref) => (
  <$CFN {...props} forwardedRef={ref} />
));
Or inline:

export const Forwarded = fref ->

export const Forwarded = forwardRef<$TABSTOPElement, $CFN_Props>(
  (props, ref) => <$CFN {...props} forwardedRef={ref} />
);
Function Component Export
Importing
Shortcut	Expands to
rc	const packageName = require('package-name');
imp	import packageName from 'package-name';
impf	import File from './File';
impn	import { nested } from 'package-or/path';
impa	import * as Thing from 'package-or/path';
impp	import './file';
icn	import cn from 'classnames';
ism	import styles from './$CFN.module.scss';
Exporting
Shortcut	Expands to
exp	export { default } from './CurrentFolder';
expf	export File from './File';
expn	export { nested } from 'package-or/path
expa	export * from 'package-or/path';
expd	export { default as Thing } from './Thing';
Logging
Shortcut	Expands to
cl	console.log($TABSTOP)
clv	console.log('variable: ', variable)
ce	console.error($TABSTOP)
cw	console.warrn($TABSTOP)
ct	console.table($TABSTOP)
Tests (Javascript and Typescript)
React Test File
rtf ->

import React from "react";
import { cleanup, render } from "@testing-library/react";

import $CFN from "../$CFN";

afterEach(cleanup);

describe("$CFN", () => {
  it("should $TABSTOP", () => {
    $TABSTOP;
  });
});
React Hooks Test File
rhtf ->

import React from "react";
import { cleanup } from "@testing-library/react";
import { renderHook } from "@testing-library/react-hooks";

import $TABSTOP from "../$CFN";

afterEach(cleanup);

describe("$CFN", () => {
  it("should $TABSTOP", () => {
    $TABSTOP;
  });
});
Describe a test
desc ->

describe('$CFN', () => {
  it('should $TABSTOP', () => {
    $TABSTOP
  )};
});
it should...
it ->

it("should $TABSTOP", () => {
  $TABSTOP;
});
Test todo
todo ->

it.todo("should $TABSTOP");
