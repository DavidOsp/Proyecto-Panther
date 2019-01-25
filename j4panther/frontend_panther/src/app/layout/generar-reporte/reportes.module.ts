import { NgModule } from '@angular/core';
import { CommonModule } from '@angular/common';

import { ReportesRoutingModule } from './reportes.routing.module';
import { ReportesComponent } from './reportes.component';
import { PageHeaderModule } from './../../shared';

@NgModule({
    imports: [CommonModule, ReportesRoutingModule, PageHeaderModule],
    declarations: [ReportesComponent]
})
export class ReportesModule {}


