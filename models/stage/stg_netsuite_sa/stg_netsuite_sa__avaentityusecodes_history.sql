
with source as (

    select * from {{ source('raw_netsuite_sa', 'avaentityusecodes_history') }}

),

renamed as (

    select
        avaentityusecodes_id,
        _fivetran_deleted,
        _fivetran_synced,
        avaentityusecodes_extid,
        avaentityusecodes_name,
        date_created,
        date_deleted,
        description,
        entityuse_code_id,
        is_inactive,
        last_modified_date,
        parent_id,
        partition_date

    from source

)

select * from renamed
