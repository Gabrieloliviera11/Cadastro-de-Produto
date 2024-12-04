import { ComponentFixture, TestBed } from '@angular/core/testing';

import { TelinhaaComponent } from './telinhaa.component';

describe('TelinhaaComponent', () => {
  let component: TelinhaaComponent;
  let fixture: ComponentFixture<TelinhaaComponent>;

  beforeEach(() => {
    TestBed.configureTestingModule({
      declarations: [TelinhaaComponent]
    });
    fixture = TestBed.createComponent(TelinhaaComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
