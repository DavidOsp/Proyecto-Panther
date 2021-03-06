import { NgModule } from '@angular/core';

import { Routes, RouterModule } from '@angular/router';
import { PeriodoLectivoComponent } from './periodo-lectivo.component';

const routes: Routes = [
    {
        path: '', component: PeriodoLectivoComponent
    }
];

@NgModule({
    imports: [RouterModule.forChild(routes)],
    exports: [RouterModule]
})
export class PeriodoLectivoRoutingModule {
}
