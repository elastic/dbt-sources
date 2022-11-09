
with source as (

    select * from {{ source('raw_salesforce', 'apxtconga_4_conga_solution_email_template_c_history') }}

),

renamed as (

    select
        partitiontime,
        id,
        _fivetran_synced,
        apxtconga_4_comments_c,
        apxtconga_4_conga_email_template_c,
        apxtconga_4_conga_email_template_group_c,
        apxtconga_4_conga_email_template_name_c,
        apxtconga_4_conga_solution_c,
        apxtconga_4_is_default_c,
        created_by_id,
        created_date,
        currency_iso_code,
        is_deleted,
        last_modified_by_id,
        last_modified_date,
        name,
        system_modstamp

    from source

)

select * from renamed
