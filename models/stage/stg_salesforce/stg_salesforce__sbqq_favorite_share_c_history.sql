
with source as (

    select * from {{ source('raw_salesforce', 'sbqq_favorite_share_c_history') }}

),

renamed as (

    select
        partitiontime,
        id,
        _fivetran_synced,
        created_by_id,
        created_date,
        currency_iso_code,
        is_deleted,
        last_modified_by_id,
        last_modified_date,
        name,
        sbqq_favorite_c,
        sbqq_user_c,
        system_modstamp

    from source

)

select * from renamed