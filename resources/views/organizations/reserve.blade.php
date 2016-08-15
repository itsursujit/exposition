@extends('layouts.app')
@section('styles')
    <link rel="stylesheet" href="{{ URL::to('/assets/css/form-elements.css') }}">
@endsection
@section('content')

    <!-- /#header -->
    <section id="signup">
        <!-- Top content -->
        <div class="top-content">
            <div class="container">

                <div class="row">
                    <div class="col-sm-8 col-sm-offset-2 text">
                        @if(isset($stand[0]) && $stand[0]->is_booked)
                            <h1>No Stand available for Reservation or Already Reserved</h1>
                        @else
                            <h1>Reserve your favourite stand</h1>
                        @endif
                    </div>
                </div>
                @if(isset($stand[0]) && !$stand[0]->is_booked)
                    <div class="row">
                        <div class="col-sm-10 col-sm-offset-1 col-md-8 col-md-offset-2 col-lg-6 col-lg-offset-3 form-box">
                            @foreach($stand as $key => $cur)

                                <form role="form" action="/reserve/{{ $cur->stand_id }}" method="post" class="f1"  enctype="multipart/form-data">
                                    {!! csrf_field() !!}
                                    <p>Fill in the form to order the stand</p>
                                    <div class="f1-steps">
                                        <div class="f1-progress">
                                            <div class="f1-progress-line" data-now-value="16.66" data-number-of-steps="3" style="width: 16.66%;"></div>
                                        </div>
                                        <div class="f1-step active">
                                            <div class="f1-step-icon"><i class="fa fa-user"></i></div>
                                            <p>about</p>
                                        </div>
                                        <div class="f1-step">
                                            <div class="f1-step-icon"><i class="fa fa-key"></i></div>
                                            <p>account</p>
                                        </div>
                                        <div class="f1-step">
                                            <div class="f1-step-icon"><i class="fa fa-twitter"></i></div>
                                            <p>checkout</p>
                                        </div>
                                    </div>

                                    <fieldset>
                                        <h4>Organization Information:</h4>
                                        <div class="form-group{{ $errors->has('organization_name') ? ' has-error' : '' }}">
                                            <label class="sr-only" for="f1-organization-name">Organization name</label>
                                            <input type="text" name="organization_name" value="{{ old('organization_name') }}" required placeholder="Organization name..." class="f1-organization-name form-control {{ $errors->has('organization_name') ? ' input-error' : '' }}" id="f1-organization-name">
                                            @if ($errors->has('organization_name'))
                                                <span class="help-block">
                                        <label class="label label-danger">{{ $errors->first('organization_name') }}</label>
                                    </span>
                                            @endif
                                        </div>
                                        <div class="form-group{{ $errors->has('organization_email') ? ' has-error' : '' }}">
                                            <label class="sr-only" for="f1-email">Email</label>
                                            <input type="text" name="organization_email" value="{{ old('organization_email') }}" required placeholder="Email..." class="f1-email form-control {{ $errors->has('organization_email') ? ' input-error' : '' }}" id="f1-email">
                                            @if ($errors->has('organization_email'))
                                                <span class="help-block">
                                        <label class="label label-danger">{{ $errors->first('organization_email') }}</label>
                                    </span>
                                            @endif
                                        </div>
                                        <div class="form-group">
                                            <label class="sr-only" for="f1-phone">Phone</label>
                                            <input type="text" name="phone" placeholder="Phone..." class="f1-email form-control" id="f1-phone">
                                        </div>
                                        <div class="f1-buttons">
                                            <button type="button" class="btn btn-next">Next</button>
                                        </div>
                                    </fieldset>

                                    <fieldset>
                                        <h4>Set up your account:</h4>
                                        <div class="form-group{{ $errors->has('name') ? ' has-error' : '' }}">
                                            <label class="sr-only" for="f1-admin-name">Admin Name</label>
                                            <input type="text" name="name" required placeholder="Admin name..." class="{{ $errors->has('name') ? ' input-error' : '' }} f1-admin-name form-control" id="f1-admin-name">
                                            @if ($errors->has('name'))
                                                <span class="help-block">
                                        <label class="label label-danger">{{ $errors->first('name') }}</label>
                                    </span>
                                            @endif
                                        </div>
                                        <div class="form-group{{ $errors->has('email') ? ' has-error' : '' }}">
                                            <label class="sr-only" for="f1-admin-email">Admin Email</label>
                                            <input type="text" name="email" required placeholder="Email..." class="f1-admin-email form-control {{ $errors->has('email') ? ' input-error' : '' }}" id="f1-admin-email">
                                            @if ($errors->has('email'))
                                                <span class="help-block">
                                        <label class="label label-danger">{{ $errors->first('email') }}</label>
                                    </span>
                                            @endif
                                        </div>
                                        <div class="form-group{{ $errors->has('password') ? ' has-error' : '' }}">
                                            <label class="sr-only" for="f1-password">Password</label>
                                            <input type="password" name="password" required placeholder="Password..." class="{{ $errors->has('password') ? ' input-error' : '' }} f1-password form-control" id="f1-password">
                                            @if ($errors->has('password'))
                                                <span class="help-block">
                                        <label class="label label-danger">{{ $errors->first('password') }}</label>
                                    </span>
                                            @endif
                                        </div>
                                        <div class="form-group{{ $errors->has('password_confirmation') ? ' has-error' : '' }}">
                                            <label class="sr-only" for="f1-repeat-password">Repeat password</label>
                                            <input type="password" name="password_confirmation" required placeholder="Repeat password..."
                                                   class="f1-repeat-password form-control {{ $errors->has('password_confirmation') ? ' input-error' : '' }}" id="f1-repeat-password">
                                            @if ($errors->has('password_confirmation'))
                                                <span class="help-block">
                                        <label class="label label-danger">{{ $errors->first('password_confirmation') }}</label>
                                    </span>
                                            @endif
                                        </div>
                                        <div class="form-group">
                                            <label for="f1-image">Upload Image</label>
                                            <input type="file" name="image" accept=".jpg, .jpeg, .png" class="f1-image form-control" id="f1-image">
                                        </div>
                                        <div class="form-group">
                                            <label for="f1-documents">Upload Documents</label>
                                            <input type="file" name="documents" accept=".jpg, .jpeg, .png, .xls, .xlsx, .doc, .docx, .pdf, .ppt, .pptx, .txt" class="f1-documents form-control" id="f1-documents">
                                        </div>
                                        <div class="f1-buttons">
                                            <button type="button" class="btn btn-previous">Previous</button>
                                            <button type="button" class="btn btn-next">Next</button>
                                        </div>
                                    </fieldset>

                                    <fieldset>
                                        <h4>Checkout:</h4>
                                        <div class="form-group">
                                            <div class="col-lg-12">
                                                <table>
                                                    <tbody>
                                                    <tr>
                                                        <td><img style="width:200px;" class="img img-responsive" src="{{ $cur->picture }}" alt=""></td>
                                                        <td style="padding: 25px;line-height: 1.25;">
                                                            <h4>{{ $cur->title }}</h4>
                                                            <p>{{ $cur->exposition_title }}</p>
                                                        </td>
                                                        <td>USD $1200</td>
                                                    </tr>
                                                    </tbody>
                                                </table>
                                            </div>
                                        </div>
                                        <div class="f1-buttons">
                                            <button type="button" class="btn btn-previous">Previous</button>
                                            {{--<button type="submit" name="order" class="btn btn-submit" value="reserve">Reserve</button>--}}
                                            <button type="submit" name="order" class="btn btn-submit" value="book">Confirm Reservation</button>
                                        </div>
                                    </fieldset>
                                </form>
                            @endforeach
                        </div>
                    </div>
                @endif

            </div>
        </div>

    </section>

    <!-- #bottom-bar -->
    <section id="bottom-bar">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 text-center">
                    <p>&copy; 2015 <a href="index.html">EVENT TIME</a> ALL RIGHTS RESERVED</p>
                </div>
            </div>
        </div>
    </section>
    <!-- /#bottom-bar -->


@endsection
@section('scripts')
    <script src="/assets/js/scripts.js"></script>
@endsection