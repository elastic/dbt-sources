
with source as (

    select * from {{ source('raw_salesforce', 'partner') }}

),

renamed as (

    select
        id,
        _fivetran_synced,
        account_from_id,
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
        system_modstamp

    from source

)

select * from renamed
