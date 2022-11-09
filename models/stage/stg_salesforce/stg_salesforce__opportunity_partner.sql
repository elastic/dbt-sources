
with source as (

    select * from {{ source('raw_salesforce', 'opportunity_partner') }}

),

renamed as (

    select
        id,
        _fivetran_synced,
        account_to_id,
        created_by_id,
        created_date,
        is_deleted,
        is_primary,
        last_modified_by_id,
        last_modified_date,
        opportunity_id,
        reverse_partner_id,
        role,
        system_modstamp,
        _fivetran_deleted

    from source

)

select * from renamed