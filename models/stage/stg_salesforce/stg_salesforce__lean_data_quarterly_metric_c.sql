
with source as (

    select * from {{ source('raw_salesforce', 'lean_data_quarterly_metric_c') }}

),

renamed as (

    select
        id,
        _fivetran_synced,
        created_by_id,
        created_date,
        currency_iso_code,
        is_deleted,
        last_modified_by_id,
        last_modified_date,
        lean_data_marketing_influenced_bookings_c,
        lean_data_marketing_influenced_bookings_percentage_c,
        lean_data_marketing_influenced_pipeline_c,
        lean_data_marketing_influenced_pipeline_percentage_c,
        lean_data_marketing_sourced_bookings_c,
        lean_data_marketing_sourced_bookings_percentage_c,
        lean_data_marketing_sourced_pipeline_c,
        lean_data_marketing_sourced_pipeline_percentage_c,
        lean_data_numerical_index_c,
        lean_data_opportunities_closed_c,
        lean_data_opportunities_created_c,
        lean_data_quarter_number_c,
        lean_data_quarterly_bookings_goal_c,
        lean_data_quarterly_pipeline_goal_c,
        lean_data_sales_only_bookings_c,
        lean_data_sales_only_bookings_percentage_c,
        lean_data_sales_only_pipeline_c,
        lean_data_sales_only_pipeline_percentage_c,
        lean_data_total_bookings_c,
        lean_data_total_pipeline_c,
        lean_data_year_c,
        name,
        owner_id,
        system_modstamp

    from source

)

select * from renamed
