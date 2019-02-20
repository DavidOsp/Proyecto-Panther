import { NgModule } from '@angular/core';
import { CommonModule } from '@angular/common';

import { PeriodoLectivoRoutingModule } from './periodo-lectivo.routing.module';
import { PeriodoLectivoComponent } from './periodo-lectivo.component';
import { PageHeaderModule } from './../../shared';
import {FormsModule} from '@angular/forms';
import {    MatDatepickerModule, 
            MatNativeDateModule,
            MatFormFieldModule,
            MatInputModule
        
        } from '@angular/material';

@NgModule({
    imports: [
                CommonModule, 
                PeriodoLectivoRoutingModule, 
                PageHeaderModule, 
                FormsModule, 
                MatDatepickerModule, 
                MatNativeDateModule,
                MatFormFieldModule,
                MatInputModule
             ],
             
    declarations: [PeriodoLectivoComponent]
})
export class PeriodoLectivoModule {}
