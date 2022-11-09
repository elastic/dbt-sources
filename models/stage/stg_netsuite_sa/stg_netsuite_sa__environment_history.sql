
with source as (

    select * from {{ source('raw_netsuite_sa', 'environment_history') }}

),

renamed as (

    select
        environment_id,
        _fivetran_deleted,
        _fivetran_synced,
        account_id,
        date_created,
        date_deleted,
        environment_extid,
        environment_name,
        is_inactive,
        last_modified_date,
        last_refresh_date,
        parent_0,
        parent_id,
        path_0,
        type_id,
        source_consumer_secret,
        source_consumer_key,
        source_token_secret,
        source_token_id,
        partition_date

    from source

)

select * from renamed
