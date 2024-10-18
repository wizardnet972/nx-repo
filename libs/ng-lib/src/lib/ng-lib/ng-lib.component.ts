import { Component } from '@angular/core';
import { CommonModule } from '@angular/common';

@Component({
  selector: 'lib-ng-lib',
  standalone: true,
  imports: [CommonModule],
  templateUrl: './ng-lib.component.html',
  styleUrl: './ng-lib.component.css',
})
export class NgLibComponent {}
