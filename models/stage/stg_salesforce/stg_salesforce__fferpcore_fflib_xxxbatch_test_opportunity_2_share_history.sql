
with source as (

    select * from {{ source('raw_salesforce', 'fferpcore_fflib_xxxbatch_test_opportunity_2_share_history') }}

),

renamed as (

    select
        partitiontime,
        _fivetran_synced,
        access_level,
        id,
        is_deleted,
        last_modified_by_id,
        last_modified_date,
        parent_id,
        row_cause,
        user_or_group_id

    from source

)

select * from renamed
