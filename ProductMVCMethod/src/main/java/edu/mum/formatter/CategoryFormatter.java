package edu.mum.formatter;

import edu.mum.domain.Category;
import edu.mum.service.CategoryService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.PropertySource;
import org.springframework.format.Formatter;
import org.springframework.stereotype.Component;

import java.text.ParseException;
import java.util.List;
import java.util.Locale;

/**
 * Created by Avenash_2 on 6/30/2018.
 */

@Component
public class CategoryFormatter implements Formatter<Category>
{
    @Autowired
    CategoryService categoryService;

    @Override
    public Category parse(String s, Locale locale) throws ParseException
    {
        List<Category> categories=categoryService.getAll();
        for(int i=0; i<categories.size(); ++i){
            if(i==0)
                continue;

            if(s.equals(categories.get(i).getName()))
                return categories.get(i);
        }

        throw new ParseException("Error - Invalid category name",0);
    }

    @Override
    public String print(Category category, Locale locale)
    {
        return category.getName();
    }
}
