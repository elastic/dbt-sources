
with source as (

    select * from {{ source('raw_netsuite', 'avaentityusecodes_history') }}

),

renamed as (

    select
        avaentityusecodes_extid,
        avaentityusecodes_id,
        avaentityusecodes_name,
        date_created,
        description,
        entityuse_code_id,
        is_inactive,
        last_modified_date,
        parent_id

    from source

)

select * from renamed
