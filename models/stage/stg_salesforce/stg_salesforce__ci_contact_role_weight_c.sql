
with source as (

    select * from {{ source('raw_salesforce', 'ci_contact_role_weight_c') }}

),

renamed as (

    select
        id,
        _fivetran_synced,
        created_by_id,
        created_date,
        currency_iso_code,
        exclude_from_influence_c,
        instance_c,
        is_deleted,
        last_modified_by_id,
        last_modified_date,
        name,
        role_c,
        setup_owner_id,
        system_modstamp,
        weight_c

    from source

)

select * from renamed
