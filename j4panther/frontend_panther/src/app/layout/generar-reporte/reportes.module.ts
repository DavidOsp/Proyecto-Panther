import { NgModule } from '@angular/core';
import { CommonModule } from '@angular/common';

import { ReportesRoutingModule } from './reportes.routing.module';
import { ReportesComponent } from './reportes.component';
import { PageHeaderModule } from './../../shared';
import {MatDatepickerModule,  MatNativeDateModule, MatFormFieldModule } from '@angular/material';

@NgModule({
    imports: [CommonModule, ReportesRoutingModule, PageHeaderModule, MatFormFieldModule],
    declarations: [ReportesComponent]
})
export class ReportesModule {}


