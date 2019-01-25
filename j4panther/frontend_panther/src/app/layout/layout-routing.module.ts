import { NgModule } from '@angular/core';
import { Routes, RouterModule } from '@angular/router';
import { LayoutComponent } from './layout.component';

const routes: Routes = [
    {
        path: '',
        component: LayoutComponent,
        children: [
            { path: '', redirectTo: 'usuarios', pathMatch: 'prefix' },
            { path: 'usuarios', loadChildren: './user/users.module#UsersModule' },
            { path: 'fechas', loadChildren: './periodo-lectivo/periodo-lectivo.module#PeriodoLectivoModule' },
            { path: 'lista', loadChildren: './check-list/check-list.module#CheckListModule' },
            { path: 'reportes', loadChildren: './generar-reporte/reportes.module#ReportesModule' },
        ]
    }
];

@NgModule({
    imports: [RouterModule.forChild(routes)],
    exports: [RouterModule]
})
export class LayoutRoutingModule {}
