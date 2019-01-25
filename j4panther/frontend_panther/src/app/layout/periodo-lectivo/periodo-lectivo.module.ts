import { NgModule } from '@angular/core';
import { CommonModule } from '@angular/common';

import { PeriodoLectivoRoutingModule } from './periodo-lectivo.routing.module';
import { PeriodoLectivoComponent } from './periodo-lectivo.component';
import { PageHeaderModule } from './../../shared';
import {FormsModule} from '@angular/forms';


@NgModule({
    imports: [CommonModule, PeriodoLectivoRoutingModule, PageHeaderModule, FormsModule ],
    declarations: [PeriodoLectivoComponent]
})
export class PeriodoLectivoModule {}
