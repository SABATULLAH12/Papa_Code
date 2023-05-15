// This file can be replaced during build by using the `fileReplacements` array.
// `ng build --prod` replaces `environment.ts` with `environment.prod.ts`.
// The list of file replacements can be found in `angular.json`.

export const environment = {
  production: false,
  subApplicationURl: '',
  currentVersion: 1.7,
  MaxFileSizeMB:20,
  MaxFileNumber: 20,
  colDelem: "||",
  rowDelem: "@",
  tableDelem: "##",
  opDelem: "^^",
  maxParallelRequestCount: 10,// at a time number of operations call triggered, if low will effect time taken, if high will effect ram
  ParallelRequestCheckTime: 300// in ms the lower the faster and laggyUI
};

/*
 * For easier debugging in development mode, you can import the following file
 * to ignore zone related error stack frames such as `zone.run`, `zoneDelegate.invokeTask`.
 *
 * This import should be commented out in production mode because it will have a negative impact
 * on performance if an error is thrown.
 */
// import 'zone.js/dist/zone-error';  // Included with Angular CLI.
