import { NgModule } from '@angular/core';
import { CommonModule } from '@angular/common';

import { CheckListRoutingModule } from './check-list.routing.module';
import { CheckListComponent } from './check-list.component';
import { PageHeaderModule } from './../../shared';

@NgModule({
    imports: [CommonModule, CheckListRoutingModule, PageHeaderModule],
    declarations: [CheckListComponent]
})
export class CheckListModule {}
