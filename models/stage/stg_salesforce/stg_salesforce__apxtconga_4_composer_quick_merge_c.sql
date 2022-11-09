
with source as (

    select * from {{ source('raw_salesforce', 'apxtconga_4_composer_quick_merge_c') }}

),

renamed as (

    select
        id,
        _fivetran_synced,
        apxtconga_4_conga_solution_c,
        apxtconga_4_description_c,
        apxtconga_4_launch_cm_8_c,
        apxtconga_4_weblink_id_c,
        apxtconga_4_weblink_id_formula_c,
        apxtconga_4_weblink_name_c,
        apxtconga_4_weblink_name_formula_c,
        created_by_id,
        created_date,
        currency_iso_code,
        is_deleted,
        last_activity_date,
        last_modified_by_id,
        last_modified_date,
        last_referenced_date,
        last_viewed_date,
        name,
        owner_id,
        system_modstamp

    from source

)

select * from renamed
