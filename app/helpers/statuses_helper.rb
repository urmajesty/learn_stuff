module StatusesHelper

  def display_index_header
     if @course
      content_tag(:h2,"Course Statuses for the  #{@course.title} course")
     elsif @language
       tag.h2("Language Statuses for the #{@language.title} language")
     else
      content_tag(:h1, "Statuses")
     end
  end

  def display_date(t)
    "on #{t.datetime}" if t.date
  end


  def display_comments(t)
    "My experience: #{t.comments}"  if !t.comments.empty?
  end

  def course_form_option(form_builder)
    if @course
       content_tag(:p, "Course: #{@course.title}")
    else
       render partial: "courseform", locals: {f: form_builder}
    end
  end

end
