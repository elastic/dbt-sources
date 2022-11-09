
with source as (

    select * from {{ source('raw_salesforce', 'pdri_metadata_component_deployment_result_c') }}

),

renamed as (

    select
        id,
        _fivetran_synced,
        created_by_id,
        created_date,
        currency_iso_code,
        is_deleted,
        last_activity_date,
        last_modified_by_id,
        last_modified_date,
        name,
        pdri_metadata_deployment_result_c,
        system_modstamp,
        pdri_component_type_c,
        pdri_component_id_c,
        pdri_created_c,
        pdri_component_name_c,
        pdri_problem_c,
        pdri_problem_type_c,
        pdri_result_c,
        pdri_problem_line_number_c,
        pdri_result_icon_c

    from source

)

select * from renamed
