
with source as (

    select * from {{ source('raw_salesforce', 'chatter_follower_group_c_history') }}

),

renamed as (

    select
        partitiontime,
        id,
        _fivetran_synced,
        chatter_follower_group_id_c,
        created_by_id,
        created_date,
        currency_iso_code,
        is_deleted,
        last_modified_by_id,
        last_modified_date,
        name,
        setup_owner_id,
        system_modstamp

    from source

)

select * from renamed
