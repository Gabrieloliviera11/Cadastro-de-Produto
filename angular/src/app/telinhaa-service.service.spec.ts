import { TestBed } from '@angular/core/testing';

import { TelinhaaServiceService } from './telinhaa-service.service';

describe('TelinhaaServiceService', () => {
  let service: TelinhaaServiceService;

  beforeEach(() => {
    TestBed.configureTestingModule({});
    service = TestBed.inject(TelinhaaServiceService);
  });

  it('should be created', () => {
    expect(service).toBeTruthy();
  });
});
